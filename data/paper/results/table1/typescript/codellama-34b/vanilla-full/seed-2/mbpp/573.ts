function unique_product(list_data: number[]): number {
    let result = 1;
    for (const num of new Set(list_data)) {
        if (num !== 0) {
            result *= num;
        }
    }
    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to calculate the product of the unique numbers in a given array.
