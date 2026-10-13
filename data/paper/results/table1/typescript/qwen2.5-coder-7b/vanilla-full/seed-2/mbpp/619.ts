function move_num(test_str: string): string { 
    let res_str = test_str.split('').filter(char => !char.match(/[0-9]/g)).join(''); 
    let num_str = test_str.split('').filter(char => char.match(/[0-9]/g)).join(''); 
    return res_str + num_str; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to move all the numbers to the end of the given string.
