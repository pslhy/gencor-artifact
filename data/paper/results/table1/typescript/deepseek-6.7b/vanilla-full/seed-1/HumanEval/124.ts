function valid_date(date: string): boolean {
    // Check for empty string
    if (date.length === 0) {
        return false;
    }

    // Check if the format is mm-dd-yyyy
    const pattern = /^\d{2}-\d{2}-\d{4}$/;
    if (!pattern.test(date)) {
        return false;
    }

    // Extract the month, day and year
    const [month, day, year] = date.split('-').map(Number);

    // Check the validity of the day and month
    const isValidMonth = month >= 1 && month <= 12;
    switch (month) {
        case 1:
        case 3:
        case 5:
        case 7:
        case 8:
        case 10:
        case 12:
            const isValid31Day = day >= 1 && day <= 31;
            return isValidMonth && isValid31Day;
        case 4:
        case 6:
        case 9:
        case 11:
            const isValid30Day = day >= 1 && day <= 30;
            return isValidMonth && isValid30Day;
        case 2:
            const isLeapYear = (year % 4 === 0 && year % 100 !== 0) || (year % 400 === 0);
            const isValid29Day = day >= 1 && (isLeapYear ? day <= 29 : day <= 28);
            return isValidMonth && isValid29Day;
        default:
            return false;
    }
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
