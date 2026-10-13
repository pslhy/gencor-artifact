
function is_product_even(arr: number[]): boolean { // Function that takes in an array of numbers and returns a boolean
    let product: number = 1; // Initialize product variable to 1
    for (let num of arr) { // Iterate through each number in the array
        product *= num; // Multiply the current product with the number
    }
    return product % 2 === 0; // Return true if the product is even, false otherwise
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check whether the product of numbers in an array is even or not.
