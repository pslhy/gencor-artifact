function min_product_tuple(list1: [number, number][]): number {
    let min_product = Infinity;
    let result: [number, number] = [0, 0];
    for (let i = 0; i < list1.length; i++) {
        for (let j = i + 1; j < list1.length; j++) {
            let product = list1[i][0] * list1[j][1] + list1[j][0] * list1[i][1];
            if (product < min_product) {
                min_product = product;
                result = [list1[i][0], list1[j][1]];
            }
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
