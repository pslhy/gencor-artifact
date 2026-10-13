function check_monthnumb_number(monthnum2: number): boolean {
    switch (monthnum2) {
        case 1, 3, 5, 7, 8, 10, 12:
            return true;
        case 4, 6, 9, 11:
            return false;
        default:
            throw Error('Invalid month number');
    }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check whether the given month number contains 31 days or not.
