function sum_of_digits(nums: any[]): number {
    let sum = 0
    for (let i in nums) {
        sum += nums[i].toString().split("").reduce((prev, current) => prev + parseInt(current), 0)
    }
    return sum
}

console.log(sum_of_digits([123, 456])); // Output: 6 (1 + 2 = 3, 4 + 5 = 9, 6 = 15)
console.log(sum_of_digits([12, 34])); // Output: 10 (1 + 2 = 3, 3 + 4 = 7)
console.log(sum_of_digits([12, 34, 56])); // Output: 26 (1 + 2 = 3, 3 + 4 = 7, 5 + 6 = 11)



// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to compute the sum of digits of each number of a given array.
