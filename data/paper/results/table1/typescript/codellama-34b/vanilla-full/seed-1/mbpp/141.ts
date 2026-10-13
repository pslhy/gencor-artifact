function pancake_sort(nums: number[]): number[] {
    const n = nums.length

    for (const i = 0; i < n - 1; i++) {
        let max_index = i

        for (const j = i + 1; j < n; j++) {
            if (nums[j] > nums[max_index]) {
                max_index = j
            }
        }

        if (max_index > i) {
            const temp = nums[i]
            nums[i] = nums[max_index]
            nums[max_index] = temp
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
