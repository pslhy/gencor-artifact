function k_smallest_pairs(nums1: number[], nums2: number[], k: number): number[][] {
    const result = [];
    const heap = new Array(nums1.length).fill(0).map((_, i) => [nums1[i], nums2[0], i, 0]);
    heap.sort((a, b) => a[0] + a[1] - b[0] - b[1]);
    
    for(let i = 0; i < k && heap.length > 0; i++){
        const smallestTuple = heap.shift()!!=
        result.push([...[0], ...[1]])


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find k number of smallest pairs which consist of one element from the first array and one element from the second array.