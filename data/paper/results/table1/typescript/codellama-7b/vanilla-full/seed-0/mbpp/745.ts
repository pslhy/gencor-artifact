function divisible_by_digits(startnum: number, endnum: number): number[] {
  const numbers: number[] = [];
  for (let num = startnum; num <= endnum; num++) {
    for (let i = 1; i <= 9; i++) {
      if (num % i !== 0) {
        break;
      }
      if (i === 9) {
        numbers.push(num);
      }
    }
  }
  return numbers;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find numbers within a given range from startnum ti endnum where every number is divisible by every digit it contains. https://www.w3resource.com/tsthon-exercises/lambda/tsthon-lambda-exercise-24.php
