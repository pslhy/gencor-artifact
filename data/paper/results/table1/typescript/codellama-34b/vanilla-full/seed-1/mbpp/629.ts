function Split(list: number[]): number[] {
    let result: number[] = [];

    list.forEach((num) => {
        if (num % 2 === 0) {
            result.push(num);
        }
    });

    return result;
}

// Test the function
const numbers: number[] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
const result: number[] = Split(numbers);
console.log(result); // Output: [2, 4, 6, 8, 10]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find even numbers from an array of numbers.
