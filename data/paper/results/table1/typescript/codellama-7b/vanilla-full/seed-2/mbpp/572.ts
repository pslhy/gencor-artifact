function two_unique_nums(nums: number[]): number[] {
    return nums.filter((num, index) => nums.indexOf(num) === index);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to remove duplicate numbers from a given number of arrays.
