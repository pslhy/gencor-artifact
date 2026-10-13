
function geometric_sum(n: number): number {
    if (n < 0) return 0.0;
    else if (n === 0) return 1.0;
    else return 1 / Math.pow(2, n) + geometric_sum(n - 1);
}

// You can test this function with some sample inputs

// Example 1: n = 3
let n = 3;
let result = geometric_sum(n);
let expected_result = 1.875;
if(result === expected_result) {
    // Test passed
} else {
    // Test failed
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to calculate the geometric sum of n-1. https://www.w3resource.com/tsthon-exercises/data-structures-and-algorithms/tsthon-recursion-exercise-9.php
