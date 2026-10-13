function digit_distance_nums(n1: number, n2: number): number {
  let sum: number = 0;
  let digits: string = (n1 + "").split("").join(" ");
  digits.split(" ").map(digit => n2 & 1 ? Number(digit) - 1 : Number(digit));
  digits.split(" ").map(digit => n2 & 1 ? sum += 1 : sum + 1);
  return sum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the sum of the per-digit difference between two integers.