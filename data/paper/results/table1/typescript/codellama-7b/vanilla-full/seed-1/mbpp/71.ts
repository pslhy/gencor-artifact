function comb_sort(nums: number[]): number[] {
    let gap = nums.length;
    let swapped = true;

    while (gap > 1 || swapped) {
        if (gap > 1) {
            gap = Math.floor(gap / 1.3);
        }

        swapped = false;

        for (let i = 0; i < nums.length - gap; i++) {
            if (nums[i] > nums[i + gap]) {
                [nums[i], nums[i + gap]] = [nums[i + gap], nums[i]];
                swapped = true;
            }
        }
    }

    return nums;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort an array of elements.
