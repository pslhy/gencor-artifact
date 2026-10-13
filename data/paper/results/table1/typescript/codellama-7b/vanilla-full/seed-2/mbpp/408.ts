function k_smallest_pairs(nums1: number[], nums2: number[], k: number): number[][] {
    let result: number[][] = [];
    for (let i = 0; i < k && i < nums1.length; i++) {
        for (let j = 0; j < k && j < nums2.length; j++) {
            result.push([nums1[i], nums2[j]]);
        }
    }
    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find k number of smallest pairs which consist of one element from the first array and one element from the second array.
