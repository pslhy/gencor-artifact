function find_dissimilar(test_tup1: [number, number, number, number], test_tup2: [number, number, number, number]): [number, number, number, number] {
    return test_tup1.filter((value) => !test_tup2.includes(value)).concat(test_tup2.filter((value) => !test_tup1.includes(value)));
}

let test_tup1: [number, number, number, number] = [1, 2, 3, 4];
let test_tup2: [number, number, number, number] = [3, 4, 5, 6];

console.log(find_dissimilar(test_tup1, test_tup2));


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the dissimilar elements in the given two arrays.
