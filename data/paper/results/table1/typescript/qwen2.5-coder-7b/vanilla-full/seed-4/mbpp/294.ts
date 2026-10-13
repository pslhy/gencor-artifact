function max_val(listval: (string | number)[]): number { 
    return listval.filter(val => typeof val === 'number').reduce((max, current) => max > current ? max : current, -Infinity);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum value in a given heterogeneous array.
