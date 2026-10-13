
function k_smallest_pairs(nums1: number[], nums2: number[], k: number): number[][] { 
    if (nums1.length === 0 || nums2.length === 0 || k === 0) {
        return [];
    }

    const minHeap = new Array<[number, number, number]>();
    const result = new Array<number[]>();

    function enqueue(i: number, j: number)  :void {
        if (i < nums1.length && j < nums2.length) {
            minHeap.push([nums1[i] + nums2[j], i, j]);
            minHeap.sort((a, b) => a[0] - b[0]);
        }
    }

    enqueue(0, 0);

    while (result.length < k && minHeap.length > 0) {
        const pair = minHeap.shift()!;
        result.push([nums1[pair[1]], nums2[pair[2]]]);
        enqueue(pair[1], pair[2] + 1);
        if (pair[2] === 0) {
            enqueue(pair[1] + 1, 0);
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
