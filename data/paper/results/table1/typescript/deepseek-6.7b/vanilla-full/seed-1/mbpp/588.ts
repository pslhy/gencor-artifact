function big_diff(nums: number[]): number {
    if (!nums || nums.length === 0) {
        return 0;
    }

    let max_num = nums[0];
    let min_num = nums[0];

    for (let i = 1; i < nums.length; i++) {
        if (nums[i] > max_num) {
            max_num = nums[i];
        } else if (nums[i] < min_num) {
            min_num = nums[i];
        }
    }

    return max_num - min_num;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the difference between largest and smallest value in a given array.
