function large_product(nums1: number[], nums2: number[], N: number): number[] { 
    nums1.sort((a, b) => b - a); 
    nums2.sort((a, b) => b - a); 
    let result: number[] = []; 
    for (let i = 0; i < N; i++) { 
        result.push(nums1[i] * nums2[i]); 
    } 
    return result; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the specified number of largest products from two given arrays, selecting one factor from each array.
