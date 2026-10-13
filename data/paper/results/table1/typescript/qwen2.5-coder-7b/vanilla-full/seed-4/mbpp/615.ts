function average_tuple(nums: number[][]): number[] { 
    return nums.map(subArray => subArray.reduce((acc, curr) => acc + curr, 0) / subArray.length);
}

console.log(average_tuple([[10, 15, 17, 15], [25, 35, 100, 5], [40, 50, -2, 10]])); //-output: [ 14, 42.5, 16 ]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function which takes an arrays of arrays and returns the average value for each subarray as an array.
