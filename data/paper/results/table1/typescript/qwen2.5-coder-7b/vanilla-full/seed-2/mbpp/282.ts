function sub_list(nums1: number[], nums2: number[]): number[] { 
    return nums1.map((value, index) => value - nums2[index]);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to subtract two arrays element-wise.
