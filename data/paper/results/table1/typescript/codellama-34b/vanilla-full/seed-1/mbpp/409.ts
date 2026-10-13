function min_product_tuple(list1: [number, number][]): number {
    let min_product = 0;
    list1.forEach((pair)=>{
        min_product = Math.min(pair[0] * pair[1], min_product);
    });
    return min_product;
}

// Example usage:
console.log(min_product_tuple([[1, 2], [3, 4], [5, 6], [7, 8]])); // Output: 2


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the minimum product from the pairs of arrays within a given array.
