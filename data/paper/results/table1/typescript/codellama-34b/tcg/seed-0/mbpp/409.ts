function min_product_tuple(list1: [number, number][]): number {
    const tuple = list1.reduce((a: [number, number], b: [number, number]) => a[0] * a[1] < b[0] * b[1] ? a : b);
    return tuple[0] * tuple[1];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the minimum product from the pairs of arrays within a given array.