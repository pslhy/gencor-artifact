function sum_of_digits(nums: any[]): number {
    let sum = 0;
    nums.forEach(num => {
        num = Math.abs(num);
        while (num) {
            sum += num % 10;
            num = Math.floor(num / 10);
        }
    });
    return sum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to compute the sum of digits of each number of a given array.
