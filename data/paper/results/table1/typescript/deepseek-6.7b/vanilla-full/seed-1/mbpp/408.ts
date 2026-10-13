function k_smallest_pairs(nums1: number[], nums2: number[], k: number): number[][] {
    let minHeap = new Array<[number, number, number]>();
    let result = new Array<number[]>();
    let m = nums1.length;
    let n = nums2.length;
    
    // initialize min heap with pairs from nums1 and nums2
    for(let i=0; i<Math.min(m, k); i++) {
        minHeap.push([nums1[i], nums2[0], 0]);
    }
    
    minHeap.sort((a, b) => a[0] + a[1] - (b[0] + b[1])); // sort by sum of pair
    
    while(k-- > 0 && minHeap.length > 0) {
        let cur = minHeap.shift() as [number, number, number]; // pop the smallest pair
        result.push([cur[0], cur[1]]);
        if(cur[2] == n - 1) continue;
        
        // push next pair from the same element from nums1
        minHeap.push([cur[0], nums2[cur[2]+1], cur[2]+1]);
        
        // sort to maintain min heap properties
        minHeap.sort((a, b) => a[0] + a[1] - (b[0] + b[1]));
    }
    return result;
};


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find k number of smallest pairs which consist of one element from the first array and one element from the second array.
