function comb_sort(nums: number[]): number[] { 
    let gap = nums.length;
    let shrinkFactor = 1.3;
    let sorted = false;

    while (!sorted) {
        gap = Math.floor(gap / shrinkFactor);
        if (gap <= 1) {
            gap = 1;
            sorted = true;
        }

        let i = 0;
        while (i + gap < nums.length) {
            if (nums[i] > nums[i + gap]) {
                [nums[i], nums[i + gap]] = [nums[i + gap], nums[i]];
                sorted = false;
            }
            i++;
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
