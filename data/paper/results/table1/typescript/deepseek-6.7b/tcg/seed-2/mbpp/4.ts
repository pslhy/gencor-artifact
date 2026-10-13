function heap_queue_largest(nums: number[], n: number): number[] {
    let arr = Array.from(nums);
    let heap = new Array(n + 1);
    heap[0] = Number.MAX_SAFE_INTEGER;
    
    for(let i = 0; i < n; i++) {
        heap[i+1] = arr[i];
        let j = i + 1;
        let flag = true;
        while(flag) {
            if (heap[Math.floor(j / 2)] < heap[j]) {
                let tmp = heap[j];
                heap[j] = heap[Math.floor(j / 2)];
                heap[Math.floor(j / 2)] = tmp;
                j = Math.floor(j / 2);
            } else {
                flag = false;
            }
        }
    }
  
    for(let i = n; i < arr.length; i++) {
        if (arr[i] > heap[1]) {
            heap[1] = arr[i];
            
            let j = 1;
            let flag = true;
            while(flag) {
                let max = j;
                if(2 * j <= n && heap[2 * j] > heap[max]) max = 2 * j;
                if(2 * j + 1 <= n && heap[2 * j + 1] > heap[max]) max = 2 * j + 1;
                if(max !== j) {
                    let tmp = heap[j];
                    heap[j] = heap[max];
                    heap[max] = tmp;
                    j = max;
                } else {
                    flag = false;
                }
            }
        }
    }
    return heap.slice(1).sort((a, b) => b - a);
}

let nums = [141, 69, 1, 80, 46, 140, 10, 83, 60, 178, 126, 14, 148, 168, 4, 136, 159, 7, 30, 174];
let n = 5;

// Test
let result = heap_queue_largest(nums, n);


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the n largest integers from a given array of numbers, returned in descending order.