
function k_smallest_pairs(nums1: number[], nums2: number[], k: number): number[][] {    
    const result: number[][] = [];
    const heap = new Array<{[k: string]: number}>();

    nums1.forEach(num1 => {
        nums2.forEach(num2 => {
            heap.push({
                num1: num1,
                num2: num2,
                sum: num1 + num2
            });
        });
    });

    heap.sort((a, b) => a.sum - b.sum);

    for(let i = 0; i < k && i < heap.length; i++) {
        result.push([heap[i].num1, heap[i].num2]);
    }

    return result;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find k number of smallest pairs which consist of one element from the first array and one element from the second array.
