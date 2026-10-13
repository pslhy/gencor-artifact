function find_lists(Input: any[]): number {
    let numOfArrays: number = 0;
    Input.forEach((element) => {
        if (Array.isArray(element)) {
            numOfArrays++;
        }
    });
    return numOfArrays;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find number of arrays present in the given array.
