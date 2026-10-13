function valid_date(date: string): boolean {
  const dateParts = date.split('-');
  if (dateParts.length !== 3) {
    return false;
  }
  const mm = parseInt(dateParts[0]);
  const dd = parseInt(dateParts[1]);
  const yyyy = parseInt(dateParts[2]);
  if (mm < 1 || mm > 12 || dd < 1 || dd > 31 || yyyy < 1) {
    return false;
  }
  if (mm === 2) {
    return is_leap_year(yyyy) && dd <= 29;
  }
  if (mm === 1 || mm === 3 || mm === 5 || mm === 7 || mm === 8 || mm === 10 || mm === 12) {
    return dd <= 31;
  }
  return dd <= 30;
}

function is_leap_year(yyyy: number): boolean {
  return yyyy % 4 === 0 && (yyyy % 100 !== 0 || yyyy % 400 === 0);
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
