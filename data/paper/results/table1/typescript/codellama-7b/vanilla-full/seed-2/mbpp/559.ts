function max_sub_array_sum(a: number[], size: number): number {
    let highestSum = a[0];
    for (let i = 0; i < a.length; i++) {
        let currentSum = 0;
        for (let j = i; j < a.length && j < i + size; j++) {
            currentSum += a[j];
        }
        highestSum = currentSum > highestSum ? currentSum : highestSum;
    }
    return highestSum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the sum of the largest contiguous subarray in the given array.
