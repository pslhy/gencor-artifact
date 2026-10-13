function is_sublist(l: number[], s: number[]): boolean { 
    let sub = s.length; 
    let len = l.length; 
  
    for (let i = 0; i <= len - sub; i++) { 
        let j; 
        for (j = 0; j < sub; j++) 
            if (l[i + j] !== s[j]) 
                break; 
  
        if (j === sub) 
            return true; 
    } 
  
    return false; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check whether an array contains the given subarray or not.
