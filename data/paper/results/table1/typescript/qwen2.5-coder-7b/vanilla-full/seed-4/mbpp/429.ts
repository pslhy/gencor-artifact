function and_tuples(test_tup1: [number, number, number, number], test_tup2: [number, number, number, number]): [number, number, number, number] { 
    // Using the map function to iterate over both tuples and perform bitwise AND operation on corresponding elements
    let res = test_tup1.map((ele, idx) => ele & test_tup2[idx]); 
    return res as [number, number, number, number]; 
}

// Example usage:
let test_tup1: [number, number, number, number] = [10, 1, 9, 4];
let test_tup2: [number, number, number, number] = [8, 2, 6, 3];
console.log(`The computed bitwise AND res is: ${and_tuples(test_tup1, test_tup2)}`);


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to extract the elementwise and arrays from the given two arrays.
