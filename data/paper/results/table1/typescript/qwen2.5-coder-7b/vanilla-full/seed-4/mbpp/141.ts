function pancake_sort(nums: number[]): number[] { 
    for (let size = nums.length; size > 1; --size) {
        let maxIndex = 0, maxValue = -Infinity;
        for (let i = 0; i < size; ++i) {
            if (nums[i] > maxValue) {
                maxValue = nums[i];
                maxIndex = i;
            }
        }
        if (maxIndex === size - 1) continue;
        reverse(nums, 0, maxIndex);
        reverse(nums, 0, size - 1);
    }
    return nums;
}

function reverse(nums: number[], start: number, end: number): void {
    while (start < end) {
        [nums[start], nums[end]] = [nums[end], nums[start]];
        start++;
        end--;
    }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort an array of elements.
