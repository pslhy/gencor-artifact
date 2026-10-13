
function power(a: number, b: number): number { 
{
  if (b === 0) 
  {
    return 1;
  } 
  else if (b < 0) 
  {
    return 1 / power(a, -b);
  } 
  else 
  {
    let result = 1;
    for (let i = 0; i < b; i++) 
    {
      result *= a;
    }
    return result;
  }
}
const a = 4;
const b = 3;
const result = power(a, b);
// This will output: 64 as 4^3 is 64
const result2 = power(a, -b);
// This will output: 0.015625 as 4^-3 is 0.015625
const result3 = power(a, 0);
// This will output: 1 as any number to the power of 0 is 1
result;
result2;
result3


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to calculate the value of 'a' to the power 'b'.
