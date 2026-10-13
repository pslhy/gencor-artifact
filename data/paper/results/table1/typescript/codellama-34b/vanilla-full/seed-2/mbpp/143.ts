function find_lists(Input: any[]): number {
    let count = 0;
    for (const element of Input) {
        if (Array.isArray(element)) {
            count += 1;
        }
    }
    return count;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find number of arrays present in the given array.
