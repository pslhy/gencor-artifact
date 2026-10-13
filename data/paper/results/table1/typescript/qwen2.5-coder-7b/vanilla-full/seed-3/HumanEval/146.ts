function specialFilter(nums: number[]): number {
    return nums.filter(num => {
        if (num <= 10) return false;
        const digits = Math.abs(num).toString().split('');
        const firstDigit = parseInt(digits[0], 10);
        const lastDigit = parseInt(digits[digits.length - 1], 10);
        return [1, 3, 5, 7, 9].includes(firstDigit) && [1, 3, 5, 7, 9].includes(lastDigit);
    }).length;
}


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
