function sort_counter(dict1: {[key: string]: number}): [string, number][] {
    const sorted_dict: [string, number][] = [];
    for (const key in dict1) {
        sorted_dict.push([key, dict1[key]]);
    }
    sorted_dict.sort((a, b) => b[1] - a[1]);
    return sorted_dict;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort an object by value.
