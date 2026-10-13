function comb_sort(nums: number[]): number[] {
    const shrinkFactor = 1.3;
    let gap = nums.length;

    let swapped = true;
  
    while (gap !== 1 || swapped === true) {
        gap = Math.floor(gap / shrinkFactor);
  
        swapped = false;
  
        for (let i = 0; i + gap < nums.length; i++) {
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
