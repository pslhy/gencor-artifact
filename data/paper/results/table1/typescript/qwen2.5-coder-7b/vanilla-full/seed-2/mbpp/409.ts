function min_product_tuple(list1: [number, number][]): number { 
    let minProduct = Number.MAX_SAFE_INTEGER;
    for(let i = 0; i < list1.length; i++){
        const product = list1[i][0] * list1[i][1];
        if(product < minProduct){
            minProduct = product;
        }
    }
    return minProduct;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the minimum product from the pairs of arrays within a given array.
