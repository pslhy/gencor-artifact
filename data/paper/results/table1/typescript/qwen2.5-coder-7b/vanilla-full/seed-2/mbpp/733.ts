function find_first_occurrence(A: number[], x: number): number { 
    let l = 0;
    let r = A.length - 1; 
    let res = -1; 
    while (l <= r) { 
        let m = Math.floor((l + r) / 2); 
        if (A[m] == x) { 
            res = m; 
            r = m - 1; 
        } else if (A[m] < x) { 
            l = m + 1; 
        } else { 
            r = m - 1; 
        } 
    } 
    return res; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the index of the first occurrence of a given number in a sorted array.
