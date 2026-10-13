function pancake_sort(nums: number[]): number[] {
    let len = nums.length;
    for (let i = len; i > 0; i--) {
        let maxIdx = findMax(nums, i);
        if (maxIdx != i - 1) {
            nums = reverse(nums, 0, maxIdx);
            nums = reverse(nums, 0, i - 1);
        }
    }
    return nums;
}

function findMax(nums: number[], n: number): number {
    let maxIdx = 0;
    for (let i = 0; i < n; i++) {
        if (nums[i] > nums[maxIdx]) {
            maxIdx = i;
        }
    }
    return maxIdx;
}

function reverse(nums: number[], i: number, j: number): number[] {
    while (i < j) {
        let temp = nums[i];
        nums[i] = nums[j];
        nums[j] = temp;
        i++;
        j--;
    }
    return nums;
}

console.log(pancake_sort([7, 5, 6, 4, 3, 2])); //[2, 3, 4, 5, 6, 7]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort an array of elements.
