function union_elements(test_tup1: number[], test_tup2: number[]): number[] {
    let union_set = new Set<number>();
    test_tup1.forEach(num => union_set.add(num));
    test_tup2.forEach(num => union_set.add(num));
    return Array.from(union_set).sort((a, b) => a - b);
}

console.log(union_elements([1, 2, 3, 4], [3, 4, 5, 6]));


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the union of the elements of two given arrays and output them in sorted order.
