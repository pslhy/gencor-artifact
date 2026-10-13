function large_product(nums1: number[], nums2: number[], N: number): number[] {
    const nums1Sorted = nums1.sort((a, b) => b - a);
    const nums2Sorted = nums2.sort((a, b) => b - a);
    const heap = new MaxPriorityQueue({ compare: (a, b) => b.product - a.product });

    for (let i = 0; i < nums1.length; i++) {
        for (let j = 0; j < nums2.length; j++) {
            let product = nums1[i] * nums2[j];
            heap.enqueue({ product });
        }
    }

    const result = [];
    for (let i = 0; i < N; i++) {
        result.push(heap.dequeue().element.product);
    }
    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the specified number of largest products from two given arrays, selecting one factor from each array.
