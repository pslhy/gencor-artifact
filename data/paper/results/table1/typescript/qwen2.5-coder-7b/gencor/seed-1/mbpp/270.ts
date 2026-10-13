
function sum_even_and_even_index(arr: number[]): number { // Function that takes in an array as a parameter
    let sum = 0; // Variable to keep track of sum of even numbers at even positions
    for (let i = 0; i < arr.length; i += 2) { // Loop to iterate through the array with step 2 (even positions)
        if (arr[i] % 2 === 0) { // Check if number at current position is even
            sum += arr[i]; // Add even number to sum
        }
    }
    return sum; // Return the sum
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the sum of even numbers at even positions of an array.
