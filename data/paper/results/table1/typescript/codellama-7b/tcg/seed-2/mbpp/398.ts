function sum_of_digits(nums: any[]): number {
    let result = 0;
    for (const num of nums) {
        result += num.toString().split('').reduce((acc: number, digit: string) => acc + parseInt(digit), 0);
    }
    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to compute the sum of digits of each number of a given array.