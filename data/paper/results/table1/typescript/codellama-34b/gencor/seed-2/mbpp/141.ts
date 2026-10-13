
function pancake_sort(nums: number[]): number[] {
    let current_max = nums.length - 1;
    let sorted_arr = [nums[0]];

    while (current_max > 0) {
        let max_index = 0;
        for (let i = 1; i <= current_max; i++) {
            if (nums[i] > nums[max_index]) {
                max_index = i;
            }
        }
        sorted_arr.push(nums[max_index]);
        current_max--;
    }

    return sorted_arr;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort an array of elements.
