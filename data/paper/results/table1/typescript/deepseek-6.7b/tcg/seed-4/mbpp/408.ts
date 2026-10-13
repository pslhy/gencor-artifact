function k_smallest_pairs(nums1: number[], nums2: number[], k: number): number[][] {
    let result: number[][] = [];
    if(nums1.length === 0 || nums2.length === 0) {
        return result;
    }
    let heap = new Array(nums1.length * nums2.length).fill(0).map((_, i) => new Array(3).fill(0));
    let index = 0;
    for(let i = 0; i < nums1.length; i++) {
        for(let j = 0; j < nums2.length; j++) {
            heap[index][0] = nums1[i];
            heap[index][1] = nums2[j];
            heap[index][2] = nums1[i] + nums2[j];
            index++;
        }
    }
    heap.sort((a, b) => a[2] - b[2]);
    for(let i = 0; i < Math.min(k, heap.length); i++) {
        result.push([heap[i][0], heap[i][1]]);
    }
    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find k number of smallest pairs which consist of one element from the first array and one element from the second array.