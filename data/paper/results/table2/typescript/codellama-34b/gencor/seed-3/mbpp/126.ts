
function sum(a: number, b: number): number {
  if(a < 0 || b < 0){
    throw new Error('Both arguments should be non-negative numbers');
  }
  if(a == 0 || b == 0){
    return 0;
  }
  const gcd = function(a: number, b: number){
    while(b != 0){
      const t = b;
      b = a % b;
      a = t;
    }
    return a;
  }
  const lcm = function(a: number, b: number){
    return a * b /

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the sum of common divisors of two given numbers.
