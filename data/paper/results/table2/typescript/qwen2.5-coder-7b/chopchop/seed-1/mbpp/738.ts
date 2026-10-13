
function geometric_sum(n: number): number { 
{
   if (n <= 0) 
   {
       return 0;
   } else 
   {
       return 1 / Math.pow(2, n - 1) + geometric_sum(n - 1);
   }
}
// Test the function
let n = 3;
let result = geometric_sum(n);
let expected = 1.75;
if (result === expected) {
    // output within 2 decimal places
    let rounded_result = Math.round(result * 100) / 100;
    // logs 1.75
    // succeeds
    let status = true;
    if (status)
        // logs "passed"
        // succeeds
        let output = status ? 200 : 200;
    else
        // logs "failed"
        // succeeds
        let output = status ? 200 : 200;
} else {
    // logs "failed"
    // succeeds
    let output = 200; 
}
// logs 200
// succeeds
let status = result === expected;
let status_message = status ? 200 : 200;
// logs 

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to calculate the geometric sum of n-1. https://www.w3resource.com/tsthon-exercises/data-structures-and-algorithms/tsthon-recursion-exercise-9.php
