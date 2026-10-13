function sort_counter(dict1: {[key: string]: number}): [string, number][] { 
    let sortable: [string, number][] = [];
    for (let item in dict1) {
        sortable.push([item, dict1[item]]);
    }
    return sortable.sort((a, b) => b[1] - a[1]);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort an object by value.
