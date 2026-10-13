function check_monthnumber_number(monthnum3: number): boolean {
    if ((monthnum3 < 1 && monthnum3 > 12) || !Number.isInteger(monthnum3)){
        return false;
    }

    const monthsWith30Days: number[] = [4, 6, 9, 11];
    return monthsWith30Days.includes(monthnum3);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check whether the given month number contains 30 days or not. Months are given as number from 1 to 12.
