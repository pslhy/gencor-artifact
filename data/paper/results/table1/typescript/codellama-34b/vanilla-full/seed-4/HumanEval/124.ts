function valid_date(date: string): boolean {
   if (date.length === 0) {
      return false;
   }
   const parts = date.split('-');
   if (parts.length !== 3) {
      return false;
   }
   const year = parseInt(parts[2]);
   const month = parseInt(parts[0]);
   const day = parseInt(parts[1]);
   if (month < 1 || month > 12) {
      return false;
   }
   if (day < 1 || day > get_days_in_month(month, year)) {
      return false;
   }
   return true;
}

function get_days_in_month(month: number, year: number): number {
   if (month === 2) {
      return 28;
   }
   return month in { 1: 31, 3: 31, 5: 31, 7: 31, 8: 31, 10: 31, 12: 31 } ? 31 : 30;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     You have to write a function which validates a given date string and
//     returns true if the date is valid otherwise false.
//     The date is valid if all of the following rules are satisfied:
//     1. The date string is not empty.
//     2. The number of days is not less than 1 or higher than 31 days for months 1,3,5,7,8,10,12. And the number of days is not less than 1 or higher than 30 days for months 4,6,9,11. And, the number of days is not less than 1 or higher than 29 for the month 2.
//     3. The months should not be less than 1 or higher than 12.
//     4. The date should be in the format: mm-dd-yyyy
//     >>> valid_date("03-11-2000")
//     true
//     >>> valid_date("15-01-2012")
//     false
//     >>> valid_date("04-0-2040")
//     false
//     >>> valid_date("06-04-2020")
//     true
//     >>> valid_date("06/04/2020")
//     false
