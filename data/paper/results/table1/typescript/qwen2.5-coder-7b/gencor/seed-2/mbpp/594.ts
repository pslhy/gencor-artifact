
function diff_even_odd(list1: number[]): number { 
    let firstEven = list1.find(num => num % 2 === 0);
    let firstOdd = list1.find(num => num % 2 !== 0);
    return firstEven - (firstOdd ??= 0);
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the difference of the first even and first odd number of a given array.
