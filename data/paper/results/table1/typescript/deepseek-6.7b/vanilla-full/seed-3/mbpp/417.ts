function group_tuples(Input: string[][]): string[][] {
    let result: {[key: string]: string[]} = {};
    for(let array of Input){
        let key: string = array[0];
        result[key] = result[key] ? result[key].concat(array.slice(1)) : array.slice(1);
    }
    return Object.values(result);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find common first element in given array of arrays.
