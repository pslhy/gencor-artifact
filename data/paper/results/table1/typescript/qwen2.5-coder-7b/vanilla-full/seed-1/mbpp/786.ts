function right_insertion(a: number[], x: number): number { 
    let l: number = 0; 
    let r: number = a.length; 
    while (l < r) { 
        let m: number = Math.floor((l + r) / 2); 
        if (a[m] <= x) 
            l = m + 1; 
        else
            r = m; 
    } 
    return l; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to locate the right insertion point for a specified value in sorted order.
