function merge_dictionaries_three(dict1: {[key: string]: string}, dict2: {[key: string]: string}, dict3: {[key: string]: string}): {[key: string]: string} {
    let result: {[key: string]: string} = {};
    
    for (let key in dict1) {
        result[key] = dict1[key];
    }

    for (let key in dict2) {
        result[key] = dict2[key];
    }

    for (let key in dict3) {
        result[key] = dict3[key];
    }

    return result;
}

// Usage:

let dict1 = {'a': '1', 'b': '2'};
let dict2 = {'c': '3', 'd': '4'};
let dict3 = {'e': '5', 'f': '6'};

console.log(merge_dictionaries_three(dict1, dict2, dict3));
// Output: {a: '1', b: '2', c: '3', d: '4', e: '5', f: '6'}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to merge three dictionaries into a single object.
