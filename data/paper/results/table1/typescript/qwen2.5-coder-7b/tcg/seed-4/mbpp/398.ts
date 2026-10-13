function sum_of_digits(nums: any[]): number { 
    return nums.map((num) => num.toString().split('').reduce((sum: number, digit: string) => sum + parseInt(digit), 0)).reduce((total: number, sum: number) => total + sum, 0); 
}

// Test the function
const nums = [123, 456, 789];
const result = sum_of_digits(nums);
const expected = 45;


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to compute the sum of digits of each number of a given array.