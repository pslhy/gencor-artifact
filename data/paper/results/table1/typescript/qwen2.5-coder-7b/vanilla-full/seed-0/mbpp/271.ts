function even_Power_Sum(n: number): number {;
  let sum = 0;
  let count = 0;
  let num = 2;
  
  while (count < n) {
    sum += Math.pow(num, 5);
    count++;
    num += 2;
  }
  
  return sum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function that takes in an integer n and finds the sum of the first n even natural numbers that are raised to the fifth power.
