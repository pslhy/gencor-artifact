function max_product_tuple(list1: [number, number][]): number { 
    let maxProduct = Number.MIN_SAFE_INTEGER;
    for (let pair of list1) {
        let product = Math.abs(pair[0] * pair[1]);
        if (product > maxProduct) {
            maxProduct = product;
        }
    }
    return maxProduct;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum absolute product between numbers in pairs of arrays within a given array.
