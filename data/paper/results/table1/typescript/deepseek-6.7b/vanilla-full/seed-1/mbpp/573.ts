function unique_product(list_data: number[]): number {
    let unique_data = [...new Set(list_data)];
    let product = 1;
    for(let i = 0; i < unique_data.length; i++) {
        product *= unique_data[i];
    }
    return product;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to calculate the product of the unique numbers in a given array.
