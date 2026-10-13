function move_num(test_str: string): string { 
    // Filter out numbers and join them
    let numbers = test_str.split('').filter(char => !isNaN(Number(char))).join('');
    // Filter out non-numbers and join them
    let nonNumbers = test_str.split('').filter(char => isNaN(Number(char))).join('');
    // Concatenate non-numbers with numbers
    return nonNumbers + numbers;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to move all the numbers to the end of the given string.
