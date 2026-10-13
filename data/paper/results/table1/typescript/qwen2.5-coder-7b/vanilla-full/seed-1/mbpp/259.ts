function maximize_elements(test_tup1: number[][], test_tup2: number[][]): number[][] { 
    // Zip both tuples and map each pair to the maximum of the two elements
    let res = zip(test_tup1, test_tup2).map(([x, y]) => [Math.max(x[0], y[0]), Math.max(x[1], y[1])]);
    return res; 
}

// Helper function to zip two arrays
function zip(arr1: number[][], arr2: number[][]): [number[], number[]][] { 
    return arr1.map((val, index) => [val, arr2[index]]);
}

// Test the function
let test_tup1 = [[4, 5, 6],[8, 1, 2]];
let test_tup2 = [[1, 2, 3],[4, 5, 6]];
console.log(maximize_elements(test_tup1, test_tup2));


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to maximize the given two arrays.
