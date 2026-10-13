function find_Rotations(str: string): number { 
    let count = 0; 
    let rotated_str = str; 
    let temp = str; 
    while (true) { 
        count++; 
        rotated_str = rotated_str.slice(1) + rotated_str[0]; 
        if (rotated_str === temp) return count; 
        if (count > str.length) return -1; 
    } 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the minimum number of rotations (greater than 0) required to get the same string.
