function left_insertion(a: number[], x: number): number { 
    let l: number = 0; 
    let r: number = a.length - 1; 
    while (l <= r) { 
        let mid = Math.floor((l + r) / 2); 
        if (x <= a[mid]) 
            r = mid - 1; 
        else
            l = mid + 1; 
    } 
    return l; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to locate the left insertion point for a specified value in sorted order. https://www.w3resource.com/tsthon-exercises/data-structures-and-algorithms/tsthon-data-structure-exercise-24.php
