function find_length(string: string): number { 
    let size: number = string.length; 
    let difference: number = 0; 
    let max_difference: number = 0; 
    for (let i: number = 0; i < size; i++) { 
        difference += (string[i] === '0' ? 1 : -1); 
        if (difference < 0) { 
            difference = 0; 
        } 
        max_difference = Math.max(difference, max_difference); 
    } 
    return max_difference; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum difference between the number of 0s and number of 1s in any sub-string of the given binary string.
