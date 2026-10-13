function armstrong_number(number: number): boolean {
  let n = number;
  let sum = 0;
  for (let i = 1; i <= number; i++) {
    sum += Math.pow(n % 10, 3);
    n = n / 10;
  }
  return sum === number;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check whether the given number is armstrong or not.
