function average_tuple(nums: number[][]): number[] {  
    return nums.map(arr => arr.reduce((a, b) => a + b, 0) / arr.length);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function which takes an arrays of arrays and returns the average value for each subarray as an array.
