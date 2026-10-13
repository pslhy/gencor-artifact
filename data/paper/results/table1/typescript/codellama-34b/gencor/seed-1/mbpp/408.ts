
function k_smallest_pairs(nums1: number[], nums2: number[], k: number): number[][] {
    const result: number[][] = [];
    const minHeap = new Set<[number, number]>();
  
    // Add first k pairs from both arrays to the heap
    for (let i = 0; i < k; i++) {
        if (nums1[i] < nums2[i]) {
            minHeap.add([nums1[i], nums2[i]]);
        } else {
            minHeap.add([nums2[i], nums1[i]]);
        }
    }
  
    // Iterate through the arrays and add the next smallest pair to the heap
    for (let i = k; i < nums1.length; i++) {
        const pair1: [number, number] = [nums1[i], Math.min(...nums2)];
        const pair2: [number, number] = [Math.min(...nums2), nums1[i]];
        if (pair1[0] < pair1[1] && minHeap.has(pair1)) {
            minHeap.add(pair1);
            minHeap.delete(pair2);
        } else if (pair2[0] < pair2[1] && minHeap.has(pair2)) {
            minHeap.add(pair2);
            minHeap.delete(pair1);
        }
    }
  
    // Return the k smallest pairs
    for (const pair of minHeap) {
        result.push(pair);
    }
    return result;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find k number of smallest pairs which consist of one element from the first array and one element from the second array.
