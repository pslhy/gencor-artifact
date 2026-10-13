function pancake_sort(nums: number[]): number[] {
    const n = nums.length

    for (const i = 0; i < n - 1; i + 2) {
        let max = nums[0]
        let idx = 0
        for (const j = i + 1; j < n; j + 2) {
            if (nums[j] > max) {
                max = nums[j]
                idx = j
            }
        }
        if (idx > 0) {
            if (idx != i + 1) {
                pancake_sort(nums.slice(i + 1, idx))
            }
            pancake_sort(nums.slice(i + 1, n))
        }
    }

    return nums
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort an array of elements.