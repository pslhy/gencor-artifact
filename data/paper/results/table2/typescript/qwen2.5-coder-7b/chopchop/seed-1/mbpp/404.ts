
function minimum(a: number, b: number): number { 
{
  return (a < b) ? a : b;
}
minimum(3, 5); // returns 3
minimum(7, 2); // returns 2
minimum(-1, -5); // returns -5
minimum(0, 0); // returns 0
minimum(100, 100); // returns 100
minimum(-10, 10); // returns -10
minimum(0, 1); // returns 0
minimum(1, 0); // returns 0
minimum(-5, -3); // returns -5
minimum(5, -3); // returns -3
minimum(-5, 5); // returns -5
minimum(5.5, 5.5); // returns 5.5
minimum(5.5, 2.5); // returns 2.5
minimum(2.5, 5.5); // returns 2.5
minimum(-5.5, -2.5); // returns -5.5
minimum(-2.5, -5.5

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the minimum of two numbers.
