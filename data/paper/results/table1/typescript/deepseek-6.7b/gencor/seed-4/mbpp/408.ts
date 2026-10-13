
function k_smallest_pairs(nums1: number[], nums2: number[], k: number): number[][] {
    let result: number[][] = [];
    if(nums1.length === 0 || nums2.length === 0) {
        return result;
    }
    let heap = new Array<[number, number, number]>((nums1.length) * (nums2.length));
    for(let i=0; i<nums1.length; i++) {
        for(let j=0; j<nums2.length; j++) {
            heap[i*nums2.length + j] = [nums1[i], nums2[j], i*nums2.length + j];
        }
    }
    heap.sort((a, b) => a[0] + a[1] - b[0] - b[1]);
    for(let i=0; i<k && i<heap.length; i++) {
        result.push([heap[i][0], heap[i][1]]);
    }
    return result.sort((a, b) => a[0] - b[0] || a[1] - b[1]);
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find k number of smallest pairs which consist of one element from the first array and one element from the second array.
