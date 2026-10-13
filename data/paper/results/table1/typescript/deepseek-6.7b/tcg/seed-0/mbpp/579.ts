function find_dissimilar(test_tup1: [number, number, number, number], test_tup2: [number, number, number, number]): [number, number, number, number] {
    const result = [] as [number, number, number, number];
    for(let i=0; i<4; i++) {
        if(test_tup1[0] !== test_tup2[0] || test_tup1[1] !== test_tup2[1] || test_tup1[2] !== test_tup2[2] || test_tup1[3] !== test_tup2[3]) {
            result[0] = test_tup1[0];
            result[1] = test_tup1[1];
            result[2] = test_tup1[2];
            result[3] = test_tup1[3];
        } 
    }
    return result;
}

const test_tup1: [number, number, number, number] = [1, 2, 3, 4];
const test_tup2: [number, number, number, number] = [5, 6, 7, 8];

find_dissimilar(test_tup1, test_tup2);


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the dissimilar elements in the given two arrays.