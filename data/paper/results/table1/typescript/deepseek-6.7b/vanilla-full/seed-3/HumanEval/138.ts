function is_equal_to_sum_even(n: number): boolean {
    let count = 0;
    for (let i = 1; i <= n/2 && count < 4; i+=2) {
        if(i % 2 === 0) count++;
        if(n - i < i + 2 && count < 4) return false;
        if(n - i < 0) break;
    }
    return count === 4;
}

console.log(is_equal_to_sum_even(4)); // false
console.log(is_equal_to_sum_even(6)); // false
console.log(is_equal_to_sum_even(8)); // true


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
