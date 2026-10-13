function division_elements(test_tup1: [number, number, number, number], test_tup2: [number, number, number, number]): [number, number, number, number] {
    return test_tup1.map((x, i) => x / test_tup2[i]);
}

const sample_tuple1: [number, number, number, number] = [10, 20, 30, 40];
const sample_tuple2: [number, number, number, number] = [5, 10, 15, 20];

console.log(division_elements(sample_tuple1, sample_tuple2));
// expected output = [2, 2, 3/2, 2]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes in two arrays and performs mathematical division operation element-wise across the given arrays.
