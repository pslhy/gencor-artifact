function k_smallest_pairs(nums1: number[], nums2: number[], k: number): number[][] {
    const result: number[][] = [];
    const minHeap = new PriorityQueue((a, b) => a[0] < b[0]);
    for (let i = 0; i < nums1.length; i++) {
        for (let j = 0; j < nums2.length; j++) {
            const sum = nums1[i] + nums2[j];
            if (minHeap.size < k) {
                minHeap.offer([sum, [nums1[i], nums2[j]]]);
            } else if (minHeap.peek()![0] > sum) {
                minHeap.poll();
                minHeap.offer([sum, [nums1[i], nums2[j]]]);
            }
        }
    }
    const kSmallestPairs = [];
    while (kSmallestPairs.length < k && !minHeap.isEmpty()) {
        kSmallestPairs.push(minHeap.poll()![1]);
    }
    return kSmallestPairs;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find k number of smallest pairs which consist of one element from the first array and one element from the second array.
