function find_lists(Input: any[]): number {
    let sum = 0;
    Input.forEach(item => {
        if(Array.isArray(item)) sum += find_lists(item);
    });
    return sum + (sum === 0 ? 1 : 0);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find number of arrays present in the given array.
