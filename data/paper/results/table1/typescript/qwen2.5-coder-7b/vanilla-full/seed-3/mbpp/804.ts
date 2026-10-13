function is_product_even(arr: number[]): boolean {
    let product = arr.reduce((acc, curr) => acc * curr, 1);
    return product % 2 === 0;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check whether the product of numbers in an array is even or not.
