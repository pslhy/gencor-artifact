function right_insertion(a: number[], x: number): number { 
    let l = 0; 
    let h = a.length; 
    while (l < h) { 
        let mid = Math.floor((l + h) / 2); 
        if (x > a[mid]) { 
            l = mid + 1; 
        } else { 
            h = mid; 
        } 
    } 
    return l; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to locate the right insertion point for a specified value in sorted order.
