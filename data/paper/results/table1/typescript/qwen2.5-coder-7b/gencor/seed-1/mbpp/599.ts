
function sum_average(number: number): [number, number] { // Function that takes in a single number as parameter
    let sum = 0; // Variable for sum is initialized
    for(let i = 1; i <= number; i++) { 
        sum += i; // Calculate sum of first n natural numbers
    }
    let average = sum / number; // Calculate average dividing sum by their count
    return [sum, average]; // Return sum and average as an array
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find sum and average of first n natural numbers.
