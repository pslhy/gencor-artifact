function are_equivalent(num1: number, num2: number): boolean {
  const divisors1: number[] = [];
  const divisors2: number[] = [];
  
  for (let i = 1; i <= num1; i++) {
    if (num1 % i === 0) {
      divisors1.push(i);
    }
  }
  
  for (let j = 1; j <= num2; j++) {
    if (num2 % j === 0) {
      divisors2.push(j);
    }
  }
  
  return divisors1.length === divisors2.length &&
         divisors1.every((divisor: number) => divisors2.includes(divisor));
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to determine if the sum of the divisors of two integers are the same.
