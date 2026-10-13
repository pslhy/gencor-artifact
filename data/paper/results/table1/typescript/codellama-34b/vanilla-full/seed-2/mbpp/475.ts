function sort_counter(dict1: {[key: string]: number}): [string, number][] {
    return Object.entries(dict1).sort((a, b) => a[value] - b[value]);
}

const sample_dict = { 'a': 1, 'b': 3, 'c': 2 }
console.log(sort_counter(sample_dict)) // [['a', 1], ['c', 2], ['b', 3]]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort an object by value.
