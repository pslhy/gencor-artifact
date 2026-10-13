function is_equal_to_sum_even(n: number): boolean {
    const nums = [1, 2, 3, 4, 5, 6, 7, 8];
    for (let i = 0; i < nums.length - 4; i++) {
        if (nums[i] % 2 === 0 &&
            nums[i + 1] % 2 === 0 &&
            nums[i + 2] % 2 === 0 &&
            nums[i + 3] % 2 === 0 &&
            (nums[i] + nums[i + 1] + nums[i + 2] + nums[i + 3]) === n) {
            return true;
        }
    }
    return false;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Evaluate whether the given number n can be written as the sum of exactly 4 positive even numbers
//     Example
//     >>> is_equal_to_sum_even(4)
//     false
//     >>> is_equal_to_sum_even(6)
//     false
//     >>> is_equal_to_sum_even(8)
//     true
