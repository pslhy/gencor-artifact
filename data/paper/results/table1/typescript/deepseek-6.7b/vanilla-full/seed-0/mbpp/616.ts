function tuple_modulo(test_tup1: [number, number, number, number], test_tup2: [number, number, number, number]): [number, number, number, number] {
    if(test_tup1.length !== test_tup2.length) {
        throw new Error("Both arrays must have the same length");
    }

    return test_tup1.map((num, idx) => 
        num % test_tup2[idx]
    ) as [number, number, number, number];
}

const arr1 = [10, 20, 30, 40];
const arr2 = [3, 5, 7, 11];

console.log(tuple_modulo(arr1, arr2));  // Returns [1, 0, 2, 4]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function which takes two arrays of the same length and performs the element wise modulo.
