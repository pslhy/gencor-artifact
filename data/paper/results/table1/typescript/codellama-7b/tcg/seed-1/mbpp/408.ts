function k_smallest_pairs(nums1: number[], nums2: number[], k: number): number[][] {
    const result: number[][] = [];
    const minHeap = new Array(k).fill(0).map(x => []);
    let i = 0;
    let j = 0;
    
    // initialize min heap with (nums1[0], nums2[0])
    minHeap[0] = [nums1[i], nums2[j]];
    i++;
    j++;
    
    // repeat until we have k pairs
    while (result.length < k) {
        // pop min element from min heap
        const minElement = minHeap.pop()!;
        
        // add current element to result
        result.push(minElement);
        
        // check if done with current array
        if (i === nums1.length) {
            i = 0;
        }
        
        // check if done with current array
        if (j === nums2.length) {
            j = 0;
        }
        
        // add new element from next array to min heap
        minHeap.push([nums1[i], nums2[j]]);
        i++;
        j++;
    }
    
    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find k number of smallest pairs which consist of one element from the first array and one element from the second array.