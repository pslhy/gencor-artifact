
function first_Digit(n: number): number {
    n = Math.floor(Math.log2(n));
    n = n/Math.floor(Math.log2(10)) + 1;

    return Math.floor(n);
}

// Test cases
// console.log(first_Digit(3572)); // expected output 3
// console.log(first_Digit(7)); // expected output 7


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the first digit of a given number.
