function average_tuple(nums: number[][]): number[] {
    if (nums.length === 0) {
        return [];
    }
    const result: number[] = [];
    for (const sub of nums) {
        let sum = 0;
        for (const element of sub) {
            sum += element;
        }
        result.push(sum / sub.length);
    }
    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function which takes an arrays of arrays and returns the average value for each subarray as an array.
