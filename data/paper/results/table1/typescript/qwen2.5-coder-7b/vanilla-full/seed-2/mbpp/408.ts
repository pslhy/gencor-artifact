function k_smallest_pairs(nums1: number[], nums2: number[], k: number): number[][] {    
    interface Pair {
        sum: number;
        index1: number;
        index2: number;
    }
    
    let minHeap: Pair[] = [];
    for (let i = 0; i < Math.min(nums1.length, k); i++) {
        minHeap.push({ sum: nums1[i] + nums2[0], index1: i, index2: 0 });
    }
    
    let result: number[][] = [];
    while (minHeap.length > 0 && result.length < k) {
        let { sum, index1, index2 } = minHeap.shift()!;
        result.push([nums1[index1], nums2[index2]]);
        
        if (index2 + 1 < nums2.length) {
            minHeap.push({ sum: nums1[index1] + nums2[index2 + 1], index1, index2: index2 + 1 });
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
