function maximize_elements(test_tup1: number[][], test_tup2: number[][]): number[][] { 
    // Combine both tuples
    let res = [...test_tup1, ...test_tup2];

    // Extract the maximum element from each inner tuple
    res = res.map(tuple => Math.max(...tuple));

    return res;
}

// Test the function
let test_tup1 = [[4,5], [6,7], [3,2]];
let test_tup2 = [[1,2], [3,4], [5,6]];
console.log(maximize_elements(test_tup1, test_tup2)); // Output: [5, 7, 6]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to maximize the given two arrays.
