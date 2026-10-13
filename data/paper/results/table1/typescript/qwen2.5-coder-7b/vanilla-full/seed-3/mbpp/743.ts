function rotate_right(list: number[], m: number): number[] {
    m = m % list.length; // To handle m larger than array length
    return list.slice(-m).concat(list.slice(0, -m));
}

// Example usage:
const originalArray = [1, 2, 3, 4, 5];
const rotatedArray = rotate_right(originalArray, 2);
console.log(rotatedArray); // Output: [4, 5, 1, 2, 3]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to rotate a given array by specified number of items to the right direction. https://www.geeksforgeeks.org/tsthon-program-right-rotate-array-n/
