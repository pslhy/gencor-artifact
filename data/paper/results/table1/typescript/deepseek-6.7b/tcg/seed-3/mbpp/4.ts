function heap_queue_largest(nums: number[], n: number): number[] {
    let heap = new Array(n + 1);
    heap[0] = Number.MAX_VALUE; 

    for (let i = 1; i <= nums.length; i++) {
        heap[i] = nums[i - 1];
        let j = i;
        while (j > 0 && heap[Math.floor(j / 2)] < heap[j]) {
            let temp = heap[Math.floor(j / 2)];
            heap[Math.floor(j / 2)] = heap[j];
            heap[j] = temp;

            j = Math.floor(j / 2);
        }
    }

    for (let i = nums.length; i > nums.length - n; --i) {
        let temp = heap[1];
        heap[1] = heap[i];
        heap[i] = temp;
        let j = 1;
        let flag = true;
        while (flag) {
            flag = false;
            let l = 2 * j;
            let r = 2 * j + 1;
            if (l <= i - 1 && heap[l] > heap[j]) {
                let temp1 = heap[l];
                heap[l] = heap[j];
                heap[j] = temp1;
                j = l;
                flag = true;
            }
            else if (r <= i - 1 && heap[r] > heap[j]) {
                let temp1 = heap[r];
                heap[r] = heap[j];
                heap[j] = temp1;
                j = r;
                flag = true;
            }
        }
    }

    return heap.slice(1).sort((a, b) => b - a);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the n largest integers from a given array of numbers, returned in descending order.