
function check_monthnumb_number(monthnum2: number): boolean {
    const switch_monthnum2 = {
        '1': 31,
        '2': 28,
        '3': 31,
        '4': 30,
        '5': 31,
        '6': 30,
        '7': 31,
        '8': 31,
        '9': 30,
        '10': 31,
        '11': 30,
        '12': 31
    };
    return monthnum2 === 1 || monthnum2 === 3 || monthnum2 === 5 || monthnum2 === 7 || monthnum2 === 8 || monthnum2 === 10 || monthnum2 === 12;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check whether the given month number contains 31 days or not.
