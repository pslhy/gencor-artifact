function specialFilter(nums: number[]): number {
    let count = 0;
    nums.forEach(num => {
        let strNum = Math.abs(num).toString();
        if (num > 10 && (strNum[0] === '1' || strNum[0] === '3' || strNum[0] === '5' || 
                         strNum[0] === '7' || strNum[0] === '9') && 
                        (strNum[strNum.length-1] === '1' || strNum[strNum.length-1] === '3' || 
                         strNum[strNum.length-1] === '5' || strNum[strNum.length-1] === '7' || 
                         strNum[strNum.length-1] === '9')) {
            count += 1;
        }
    });
    return count;
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
