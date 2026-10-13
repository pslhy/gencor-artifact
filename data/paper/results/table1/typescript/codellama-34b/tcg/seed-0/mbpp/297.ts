function flatten_list(list1: (number | number[])[]): number[] {
    const result = [];
    for (const item of list1) {
        if (Array.isArray(item)) {
            result.push(...flatten_list(item as number[]));
        } else {
            result.push(item as number);
        }
    }
    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to flatten a given nested array structure.