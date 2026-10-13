function large_product(nums1: number[], nums2: number[], N: number): number[] { 
    nums1.sort((a, b) => a - b);
    nums2.sort((a, b) => a - b); 
    let result: number[] = []; 
    for (let i = 0; i < N; i++) {
        result.push(nums1[i] * nums2[nums2.length - 1 - i]);
        result.push(nums1[nums1.length - 1 - i] * nums2[i]);
    } 
    return result.sort((a, b) => b - a).slice(0, N);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the specified number of largest products from two given arrays, selecting one factor from each array.
