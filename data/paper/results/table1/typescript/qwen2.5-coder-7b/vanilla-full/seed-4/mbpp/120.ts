function max_product_tuple(list1: [number, number][]): number { 
    // Calculate the products of all pairs
    let products: number[] = list1.map(([a, b]) => Math.abs(a * b)); 
    // Find and return the maximum product
    return Math.max(...products); 
} 


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum absolute product between numbers in pairs of arrays within a given array.
