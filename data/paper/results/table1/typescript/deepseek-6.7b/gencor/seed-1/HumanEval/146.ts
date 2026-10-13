
function specialFilter(nums: number[]): number {
    return nums.filter(num => num > 10 && isNaN(num/ Math.floor(Math.abs(num))) && "13579".includes(Math.abs(Math.floor(num/ 10)).toString()) && "13579".includes(Math.floor(Math.abs(num) % 10).toString())).length
}

console.log(specialFilter([15, -73, 14, -15])); // prints 1
console.log(specialFilter([33, -2, -3, 45, 21, 109])); // prints 2

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes an array of numbers as input and returns
//     the number of elements in the array that are greater than 10 and both
//     first and last digits of a number are odd (1, 3, 5, 7, 9).
//     For example:
//     >>> specialFilter([15, -73, 14, -15])
//     1
//     >>> specialFilter([33, -2, -3, 45, 21, 109])
//     2
