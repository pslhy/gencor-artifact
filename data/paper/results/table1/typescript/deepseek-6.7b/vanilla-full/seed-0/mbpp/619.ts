function move_num(test_str: string): string {
    const num = test_str.replace(/[^0-9]/g, '')
    const alpha = test_str.replace(/[0-9]/g, '')
    return alpha + num;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to move all the numbers to the end of the given string.
