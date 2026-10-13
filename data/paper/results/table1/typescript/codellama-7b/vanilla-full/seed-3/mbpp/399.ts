function bitwise_xor(test_tup1: [number, number, number, number], test_tup2: [number, number, number, number]): [number, number, number, number] {
  return [
    test_tup1[0] ^ test_tup2[0],
    test_tup1[1] ^ test_tup2[1],
    test_tup1[2] ^ test_tup2[2],
    test_tup1[3] ^ test_tup2[3],
  ]
}

// Example usage:
const test_tuple1: [number, number, number, number] = [1, 2, 3, 4];
const test_tuple2: [number, number, number, number] = [5, 6, 7, 8];
const result = bitwise_xor(test_tuple1, test_tuple2);
console.log(result); // Output: [ 6, 6, 5, 4 ]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to perform the mathematical bitwise xor operation across the given arrays.
