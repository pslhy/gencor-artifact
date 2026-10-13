function union_elements(test_tup1: number[], test_tup2: number[]): number[] {
    const set1: Set<number> = new Set(test_tup1);
    const set2: Set<number> = new Set(test_tup2);
    const union: Set<number> = new Set([...set1, ...set2]);
    return Array.from(union).sort((a, b) => a - b);
}

/* Function to test the union_elements function */
const test_tuple1: number[] = [1, 2, 3, 4, 5];
const test_tuple2: number[] = [4, 5, 6, 7, 8];
console.log(union_elements(test_tuple1, test_tuple2)); // [1, 2, 3, 4, 5, 6, 7, 8]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the union of the elements of two given arrays and output them in sorted order.
