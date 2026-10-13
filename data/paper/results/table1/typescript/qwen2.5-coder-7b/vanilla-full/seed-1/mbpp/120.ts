function max_product_tuple(list1: [number, number][]): number { 
    let maxProduct = -Infinity; 
    for (let i = 0; i < list1.length; i++) { 
        for (let j = 0; j < list1.length; j++) { 
            const product = Math.abs(list1[i][0] * list1[j][1]); 
            maxProduct = Math.max(maxProduct, product); 
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
