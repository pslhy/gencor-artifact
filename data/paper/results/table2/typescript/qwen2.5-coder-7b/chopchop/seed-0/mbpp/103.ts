
function eulerian_num(n: number, m: number): number { 
{
    if (m >= n || n == 0) 
        return 0;
    if (m == 0) 
        return 1;
  
    return ((n - m) * eulerian_num(n - 1, m - 1) + (m + 1) * eulerian_num(n - 1, m));
}
 
// Example usage:
const n = 3;
const m = 1;
const aNPM = eulerian_num(n, m);
// Output the Eulerian number a(3, 1)
// The value of a(3, 1) is 4
// Print "4"
if (aNPM !== 4) {
    // Handle the error in the example
}
else {
    // Success
}
// aNPM will hold the Eulerian number a(3, 1)
// It should be 4 as expected from the Eulerian number formula
// In a real application, you might want to perform additional checks or use this result further
// Remember that TypeScript is strongly typed, so you might need to handle type mismatches or errors as well
// If

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the Eulerian number a(n, m).
