function unique_product(list_data: number[]): number {
    const unique_data: number[] = [];
    for (const element of list_data) {
        if (!unique_data.includes(element)) {
            unique_data.push(element);
        }
    }
    let product = 1;
    for (const element of unique_data) {
        product *= element;
    }
    return product;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to calculate the product of the unique numbers in a given array.
