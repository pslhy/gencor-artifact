function min_product_tuple(list1: [number, number][]): number { 
    let min_product = Infinity; 
    for (let [x, y] of list1) {
        if (x * y < min_product) {
            min_product = x * y; 
        }
    } 
    return min_product; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the minimum product from the pairs of arrays within a given array.
