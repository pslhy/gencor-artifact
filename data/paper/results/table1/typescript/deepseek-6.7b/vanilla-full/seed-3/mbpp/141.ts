function pancake_sort(nums: number[]): number[] {
    let len = nums.length;

    for (let i = len; i > 0; i--) {
        let maxIdx = findMax(nums, i);
        if (maxIdx != i - 1) {
            nums = flip(nums, maxIdx);
            nums = flip(nums, i - 1);
        }
    }
    return nums;
}

function findMax(nums: number[], end: number): number {
    let maxIdx = 0;
    for (let i = 0; i < end; i++) {
        if (nums[i] > nums[maxIdx]) maxIdx = i;
    }
    return maxIdx;
}

function flip(nums: number[], end: number): number[] {
    let start = 0;
    while (start < end) {
        let temp = nums[start];
        nums[start] = nums[end];
        nums[end] = temp;
        start++;
        end--;
    }
    return nums;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort an array of elements.
