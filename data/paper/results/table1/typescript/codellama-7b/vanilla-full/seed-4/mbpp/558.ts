function digit_distance_nums(n1: number, n2: number): number {
  let sum: number = 0;
  let digits: string = (n1 + "").split("").join(" ");
  digits: string = (n2 + "").split("").join(" ");
  let i: number = 0;
  while (i < digits.length) {
    sum = sum + Math.abs(Number(digits[i]) - Number(digits[i + 1]));
    i = i + 1;
  }
  return sum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the sum of the per-digit difference between two integers.
