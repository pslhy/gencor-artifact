
function heap_queue_largest(nums: number[], n: number): number[] {
    let result = new Array(n);
    for (let i = 0; i < n; i++) {
        result[i] = -1;
    }
    for (let i = 0; i < nums.length; i++) {
        let num = nums[i];
        if (num > result[0]) {
            result[0] = num;
            let k = 0;
            while (2 * k + 1 < n && result[2 * k + 1] > result[2 * k + 2]) {
                let tmp = result[k];
                result[k] = result[2 * k + 1];
                result[2 * k + 1] = tmp;
                k = 2 * k + 1;
            }
        }
    }
    return result;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the n largest integers from a given array of numbers, returned in descending order.
