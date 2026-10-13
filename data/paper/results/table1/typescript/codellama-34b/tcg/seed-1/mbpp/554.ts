function Split(list: number[]): number[] {
    return list.filter(num => num % 2 !== 0);
}

// Example usage:
const myArray = [1, 2, 3, 4, 5];
const oddNumbers = Split(myArray); // [1, 3, 5]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function which takes an array of integers and only returns the odd ones.