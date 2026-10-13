function find_tuples(test_list: [number, number, number][], K: number): [number, number, number][] { 
    return test_list.filter(tuple => tuple.every(num => num % K === 0));
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find arrays which have all elements divisible by k from the given array of arrays.
