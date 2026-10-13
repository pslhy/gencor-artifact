function heap_queue_largest(nums: number[], n: number): number[] {
    const retrieve = (array: number[]) => {
        let max = array[0],
        idx = 0,
        i, temp;
        for (i = 0; i < array.length; i++) {
            if (array[i] > max) {
                max = array[i];
                idx = i;
            }
        }
        temp = array[0];
        array[0] = max;
        array[idx] = temp;
        return array.pop() as number;
    }

    const heap = [...nums];
    nums.length = 0;

    while (heap.length > 0) nums.push(retrieve(heap));

    return nums.slice(-n).reverse();
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the n largest integers from a given array of numbers, returned in descending order.
