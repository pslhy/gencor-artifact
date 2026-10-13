
function centered_hexagonal_number(n: number): number { 
{
  return (3 * n * (n - 1)) + 1;
}
// Example usage
const n = 4;
const result = centered_hexagonal_number(n);
// result will be 73
if (result === 73) {
  // print or log success
}
else {
  // print or log failure
}
} 


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find nth centered hexagonal number.
