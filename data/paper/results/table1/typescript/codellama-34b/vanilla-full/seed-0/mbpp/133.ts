function sum_negativenum(nums: number[]): number {
    return nums.reduce((acc: number, current: number) => {
        if (current < 0) {
            acc += current;
        }
        return acc;
    }, 0);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to calculate the sum of the negative numbers of a given array of numbers.
