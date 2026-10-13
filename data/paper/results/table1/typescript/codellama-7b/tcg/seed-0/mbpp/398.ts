function sum_of_digits(nums: any[]): number {
  return nums.map(num => num.toString().split("").reduce((acc: number, digit: string) => acc + parseInt(digit), 0)).reduce((acc: number, sum: number) => acc + sum);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to compute the sum of digits of each number of a given array.