function index_multiplication(test_tup1: number[][], test_tup2: number[][]): number[][] { 
    // Using list comprehension to map each pair of sublists and multiply their elements at corresponding indices
    let res = test_tup1.map((sublist, index) => 
        sublist.map((value, subIndex) => value * test_tup2[index][subIndex])
    );
    return res;
}

// Example usage:
let test_tup1 = [[1, 4, 7], [2, 5, 8]];
let test_tup2 = [[4, 5, 6], [7, 8, 9]];
console.log(index_multiplication(test_tup1, test_tup2)); // Output: [[4, 20, 42], [14, 40, 72]]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to perform index wise multiplication of array elements in the given two arrays.
