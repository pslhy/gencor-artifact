
function power_base_sum(base: number, power: number): number {
    const digits = base;
    let sum = 0;
    while (digits > 0) {
        sum += digits % 10;
        digits //= 10;
    <//*>>

// Takes an input of base and power and finds the sum of all digits of the base uptil the power while gives you power errors.
// It is a solution to the problem above.
// It iterates through the list of variables passed in, digits and sum.
// power is the power of the variable that determines the power of each variable.
// sum is the running total of the values raised to the power provided.
// Math.pow is a built-in function that raises a number to the power provided.

// Takes the last element of the digits (by removing the first element) and raises it to the power specified by power.
// the variable sum of each calculation is added to the running total of sum.
// Dividing digits by ten effectively removes the the last element. The while loop continues as long as digits has a length greater than zero.

// Returns the remaining element of digits (which should always be zero), which is equal to the sum.

//Powerbase sum expected answer

// Pseudocode:

//the function received input base and power and returns the product.
//created a while loop that accepts base this specifies an

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes base and power as arguments and calculate the sum of all digits of the base to the specified power.
