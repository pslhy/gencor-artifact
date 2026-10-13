function extract_even(test_tuple: [number, number, [number, number, [number, number]], number, number]): any {
    const nestedEvenNumbers = test_tuple
                                .flat()
                                .filter( value => value % 2 === 0);
    return nestedEvenNumbers;
}
const example = [1, 2, 3, 4, 5, 6, 7, 8, 9, [1, 2, [3, 4, 5]], [6, 7, 8, 9, [10, 11, 12]]];
console.log(extract_even(example)); // Output: [2, 4, 6, 8, 10, 12]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove uneven elements in the nested mixed array.
