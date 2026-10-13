function sort_counter(dict1: {[key: string]: number}): [string, number][] {
    return Object
        .entries(dict1)
        .sort(([key1, value1], [key2, value2]) => value1 - value2);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort an object by value.
