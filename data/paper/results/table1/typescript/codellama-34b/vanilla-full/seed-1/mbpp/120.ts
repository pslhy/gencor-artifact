function max_product_tuple(list1: [number, number][]): number {
    let max_product = 0

    list1.forEach((pair)=>{
        const product = Math.abs(pair[0] * pair[1])
        if(product > max_product){
            max_product = product
        }
    });

    return max_product;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum absolute product between numbers in pairs of arrays within a given array.
