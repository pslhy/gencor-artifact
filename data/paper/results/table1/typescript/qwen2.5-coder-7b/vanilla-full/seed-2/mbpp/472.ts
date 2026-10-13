function check_Consecutive(l: number[]): boolean { 
    let l1 = l.sort((a, b) => a - b); 
    for (let i = 0; i < l1.length-1; i++) { 
        if (l1[i] + 1 !== l1[i + 1]) { 
            return false; 
        } 
    } 
    return true; 
} 


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to check whether the given array contains consecutive numbers or not.
