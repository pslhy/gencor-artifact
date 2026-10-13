
function geometric_sum(n: number): number {
    if (n <= 1) return n;
    return n + geometric_sum(n - 1);
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to calculate the geometric sum of n-1. https://www.w3resource.com/tsthon-exercises/data-structures-and-algorithms/tsthon-recursion-exercise-9.php
