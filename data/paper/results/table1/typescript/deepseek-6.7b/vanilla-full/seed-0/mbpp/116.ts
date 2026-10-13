function tuple_to_int(nums: [number, number, number]): number {
    const num = nums[0] * 10 ** (Math.floor(Math.log10(nums[1]) + 1)) + nums[1] + nums[2] * 10 ** Math.floor(Math.log10(nums[1]) + 1);
    return num;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to convert a given array of positive integers into a single integer.
