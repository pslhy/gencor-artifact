function sum(a: number, b: number): number {
  if(a < 0 || b < 0){
    throw new Error('Both arguments should be non-negative numbers');
  }
  if(a == 0 || b == 0){
    return 0;
  }
  const gcd = function(a: number, b: number): number {
    if(b === 0) return a;
    return gcd(b, a % b);
  };
  const result: number[] = [];
  for(let i = 1; i <= a; i++){
    if(a % i === 0 && b % i === 0){
      result.push(i);
    }
  }
  return result.reduce((sum, curr) => sum + curr, 0);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the sum of common divisors of two given numbers.
