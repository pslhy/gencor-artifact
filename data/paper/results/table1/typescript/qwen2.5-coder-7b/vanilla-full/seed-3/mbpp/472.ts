function check_Consecutive(l: number[]): boolean { 
    let sorted_arr = l.sort((a, b) => a - b); 
    let n = sorted_arr.length; 
    
    for (let i = 0; i < n - 1; i++) { 
        if (sorted_arr[i] + 1 !== sorted_arr[i + 1]) { 
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
