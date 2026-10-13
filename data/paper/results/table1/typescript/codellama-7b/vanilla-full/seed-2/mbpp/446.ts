function count_Occurrence(tup: any, lst: any[]): number {
    let output = 0;
    for (const element of lst) {
        if (element === tup) {
            output++;
        }
    }
    return output;
}

console.log(count_Occurrence(['a', 'b', 'c'], ['a', 'b', 'c', 'a', 'b', 'c'])); // outputs 3

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to count the occurence of all elements of array in an array.
