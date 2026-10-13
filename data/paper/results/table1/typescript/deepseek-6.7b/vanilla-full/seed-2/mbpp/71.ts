function comb_sort(nums: number[]): number[] {
    let gap = nums.length;
    let shrink = 1.3;
    let swapped = false;
    while (gap > 1 || swapped) {
        if (gap > 1) {
            gap = Math.floor(gap / shrink);
        }
        swapped = false;
        for (let i = 0; gap + i < nums.length; i++) {
            if (nums[i] > nums[i + gap]) {
                let temp = nums[i];
                nums[i] = nums[i + gap];
                nums[i + gap] = temp;
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
