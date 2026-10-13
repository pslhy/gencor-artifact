function merge_dictionaries_three(dict1: {[key: string]: string}, dict2: {[key: string]: string}, dict3: {[key: string]: string}): {[key: string]: string} {
    let merged = {...dict1, ...dict2, ...dict3};
    return merged;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to merge three dictionaries into a single object.
