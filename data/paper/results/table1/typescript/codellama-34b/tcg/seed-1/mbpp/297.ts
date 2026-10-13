function flatten_list(list1: (number | number[])[]): number[] {
    const result: number[] = [];

    list1.forEach((element) => {
        if (Array.isArray(element)) {
            result.push(...flatten_list(element as number[]));
        } else {
            result.push(element as number);
        }
    });

    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to flatten a given nested array structure.