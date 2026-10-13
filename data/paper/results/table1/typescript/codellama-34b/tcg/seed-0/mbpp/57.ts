function find_Max_Num(arr: number[]): number {
    const sorted = arr.sort((a, b) => a - b);
    const largest = sorted.pop()!;
    return largest;
}

// Example usage:
const num1 = '97531';
const num2 = '97532';

const digits1 = Array.from(num1, Number);
const digits2 = Array.from(num2, Number);

const result1 = find_Max_Num(digits1);
const result2 = find_Max_Num(digits2);

// output:
// result1 -> 97531
// result2 -> 97532


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the largest number that can be formed with the given array of digits.