function min_product_tuple(list1: [number, number][]): number {
    const tuple = list1.flat();
    return Math.min(tuple[0] * tuple[1], tuple[2] * tuple[3]);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the minimum product from the pairs of arrays within a given array.
