function k_smallest_pairs(nums1: number[], nums2: number[], k: number): number[][] { 
    const result: number[][] = [];
    const pq = new Array(k).fill(null).map(_ => ([Infinity, Infinity]));
    pq[0] = [nums1[0] + nums2[0], [0, 0]] as [number, [number, number]] 

    < [(Number), Array<[Number, [Number, Number]]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find k number of smallest pairs which consist of one element from the first array and one element from the second array.