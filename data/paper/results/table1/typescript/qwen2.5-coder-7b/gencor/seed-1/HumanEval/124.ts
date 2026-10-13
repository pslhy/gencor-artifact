
function valid_date(date: string): boolean { 
    if (date === "") return false; 
    const regex = /^(\d{2})-(\d{2})-(\d{4})$/; 
    const match = date.match(regex); 
    if (!match) return false; 
    const month = parseInt(match[1], 10); 
    const day = parseInt(match[2], 10); 
    const year = parseInt(match[3], 10); 
    if (month < 1 || month > 12) return false; 
    if (day < 1) return false; 
    if (month === 2) { 
        if (day > 29) return false; 
    } else if ([4, 6, 9, 11].includes(month)) { 
        if (day > 30) return false; 
    } else { 
        if (day > 31) return false; 
    } 
    return true; 
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
