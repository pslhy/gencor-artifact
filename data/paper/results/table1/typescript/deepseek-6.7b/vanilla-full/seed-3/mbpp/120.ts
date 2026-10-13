function max_product_tuple(list1: [number, number][]): number {
    let max_product = 0;
    for (let i = 0; i< list1.length; i++) {
        let product = list1[i][0]*list1[i][1];
        if (product > max_product){
            max_product = product;
        }
    }
    return max_product;
}

console.log(max_product_tuple([[2, 3], [4, 5], [6, 7], [8, 9]]));


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum absolute product between numbers in pairs of arrays within a given array.
