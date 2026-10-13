function k_smallest_pairs(nums1: number[], nums2: number[], k: number): number[][] {
    if (nums1.length === 0 || nums2.length === 0 || k === 0) {
        return [];
    }

    const minHeap = new Array(nums1.length).fill(0).map(i => [i, 0]);
    const result: number[][] = [];

    while (minHeap.length > 0 && result.length < k) {
        const smallestPair = minHeap.shift()!;
        result.push([nums1[smallestPair[0]], nums2[smallestPair[1]]]);
        if (smallestPair[1] + 1 < nums2.length) {
            minHeap.push([smallestPair[0], smallestPair[1] + 1]);
        }
        minHeap.sort((a, b) => (nums1[a[0]] + nums2[a[1]]) - (nums1[b[0]] + nums2[b[1]]));
    }

    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find k number of smallest pairs which consist of one element from the first array and one element from the second array.