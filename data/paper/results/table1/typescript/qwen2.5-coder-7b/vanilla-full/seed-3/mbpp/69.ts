function is_sublist(l: number[], s: number[]): boolean { 
    let traversal_length = s.length; 
    if (traversal_length == 0) { 
        return true; 
    } 
    if (traversal_length > l.length) { 
        return false; 
    } 
    for (let i = 0; i <= l.length - traversal_length; i++) { 
        let j = 0; 
        for (j = 0; j < traversal_length; j++) { 
            if (l[i + j] != s[j]) { 
                break; 
            } 
        } 
        if (j == traversal_length) { 
            return true; 
        } 
    } 
    return false; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check whether an array contains the given subarray or not.
