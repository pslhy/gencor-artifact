function check_monthnumber_number(monthnum3: number): boolean {
    let boolarray = [30, 30, 28, 30, 30, 28, 30, 30, 28, 30, 30, 28, 30]
    let boolarrayindex = months
    if (monthnum3 > 12) {
        return false
    }
    if (monthnum3 < 0) {
        return false
    }
    return boolarray[monthnum3] === 30


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check whether the given month number contains 30 days or not. Months are given as number from 1 to 12.
