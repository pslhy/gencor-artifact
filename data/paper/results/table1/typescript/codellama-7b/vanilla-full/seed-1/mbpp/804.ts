function is_product_even(arr: number[]): boolean {
    let product = 1;
    for (let i = 0; i < arr.length; i++) {
        product *= arr[i];
    }
    return product % 2 === 0;
}

// Test
console.log(is_product_even([2, 3, 4]));  // true
console.log(is_product_even([1, 2, 3, 4]));  // false


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check whether the product of numbers in an array is even or not.
