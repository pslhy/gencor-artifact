
function k_smallest_pairs(nums1: number[], nums2: number[], k: number): number[][] {
    if (nums1.length === 0 || nums2.length === 0 || k === 0) {
        return [];
    }

    const minHeap = new Array<{[key: string]: any}>();
    for (let i = 0; i < nums1.length && i < k; i++) {
        minHeap.push({ k1: 0, num1: nums1[i], num2: nums2[0], sum: nums1[i] + nums2[0] });
    }
    minHeap.sort((a, b) => a.sum - b.sum);

    const result: number[][] = [];
    while (minHeap.length && k > 0) {
        const current = minHeap.shift();
        result.push([current!.num1, current!.num2]);
        if (current!.k1 + 1 < nums2.length) {
            minHeap.push({
                k1: current!.k1 + 1,
                num1: current!.num1,
                num2: nums2[current!.k1 + 1],
                sum: current!.num1 + nums2[current!.k1 + 1]
            });
            minHeap.sort((a, b) => a.sum - b.sum);
        }
        k--;
    }

    return result;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find k number of smallest pairs which consist of one element from the first array and one element from the second array.
