function k_smallest_pairs(nums1: number[], nums2: number[], k: number): number[][] {
    let heap = new MaxPriorityQueue({
        priority: (pair: number[]) => -pair[0]*100001-pair[1]
    });

    for(let i = 0; i < nums1.length; i++) {
        for(let j = 0; j < nums2.length; j++) {
            if(heap.size() < k) {
                heap.enqueue([nums1[i], nums2[j]]);
            } else if(nums1[i] + nums2[j] < -heap.front()[0]*100001 - heap.front()[1]) {
                heap.dequeue();
                heap.enqueue([nums1[i], nums2[j]]);
            }
        }
    }

    let result: number[][] = [];
    while(!heap.isEmpty()) {
        result.push(heap.dequeue().element);
    }
    return result.reverse();
};


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find k number of smallest pairs which consist of one element from the first array and one element from the second array.
