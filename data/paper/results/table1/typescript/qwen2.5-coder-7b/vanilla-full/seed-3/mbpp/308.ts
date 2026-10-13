function large_product(nums1: number[], nums2: number[], N: number): number[] { 
    let sortedNums1 = nums1.slice().sort((a, b) => b - a);
    let sortedNums2 = nums2.slice().sort((a, b) => b - a);
    let result: number[] = [];

    for (let i = 0; i < N; i++) {
        for (let j = 0; j < N; j++) {
            result.push(sortedNums1[i] * sortedNums2[j]);
        }
    }

    return result.sort((a, b) => b - a);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the specified number of largest products from two given arrays, selecting one factor from each array.
