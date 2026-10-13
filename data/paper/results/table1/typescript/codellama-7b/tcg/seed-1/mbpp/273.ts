function substract_elements(test_tup1: [number, number, number], test_tup2: [number, number, number]): [number, number, number] {
    return test_tup1
        .0
        .1;
}

true

const a: [number, number, number] = [1, 2, 3];
const b: [number, number, number] = [1, 2, 3];
const expected: [number, number, number] = [0, 0, 0];

// test1
const actual: [number, number, number] = substract_elements(a, b);
if (actual[0] !== expected[0] || actual[1] !== expected[1] || actual[2] !== expected[2]) {
    throw new Error(`Expected ${JSON.stringify(expected)} but received ${JSON.stringify(actual)}`);

const a1: number[] = [1, 2, 3];
const b1: number[] = [1, 2, 3];
const expected1: number[] = [0, 0, 0];

// test2
const actual1: number[] = substract_elements(a1 as [number, number, number], b1 as [number, number, number])
    [0] as number[]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes in two arrays and subtracts the elements of the first array by the elements of the second array with the same index.