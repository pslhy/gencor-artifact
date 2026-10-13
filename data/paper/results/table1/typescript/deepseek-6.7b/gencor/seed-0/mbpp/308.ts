
function large_product(nums1: number[], nums2: number[], N: number): number[] {
    const nums1Sorted = nums1.sort((a, b) => b - a);
    const nums2Sorted = nums2.sort((a, b) => b - a);
    const heap = new Array(N).fill(0);

    heap[0] = nums1Sorted[0] * nums2Sorted[0];

    let p1 = 0;
    let p2 = 0;
    let index = 1;

    while(index < N) {
        const product1 = nums1Sorted[p1 + 1] * nums2Sorted[p2]
        const product2 = nums1Sorted[p1] * nums2Sorted[p2 + 1]
        if (product1 > product2) {
            if (product1 > heap[0]) {
                heap[0] = product1;
                heap.sort((a, b) => b - a);
            }
             p1 += 1;
        } else {
            if (product2 > heap[0]) {
                heap[0] = product2;
                heap.sort((a, b) => b - a);
            }
             p2 += 1;
        }
        index += 1;
    }

    return heap;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the specified number of largest products from two given arrays, selecting one factor from each array.
