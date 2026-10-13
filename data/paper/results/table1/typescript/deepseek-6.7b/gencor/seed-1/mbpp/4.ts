
function heap_queue_largest(nums: number[], n: number): number[] {
    let res: number[] = [];
    if (!nums || !n || n <= 0 || nums.length === 0 || nums.length < n) return res;

    let maxHeap: any = [];
    for (let num of nums) {
        if (maxHeap.length < n)
            maxHeap.push(num);
        else if (num > maxHeap[0]) {
            maxHeap.push(num);
            maxHeap.sort((a: number, b: number) => b - a);
            maxHeap.shift();
        }
    }

    maxHeap.sort((a: number, b: number) => b - a);
    return maxHeap;
}

// an example usage:
console.log(heap_queue_largest([10, 20, 30, 40, 50, 60, 70, 80, 90, 100], 5)); // [100, 90, 80, 70, 60]

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the n largest integers from a given array of numbers, returned in descending order.
