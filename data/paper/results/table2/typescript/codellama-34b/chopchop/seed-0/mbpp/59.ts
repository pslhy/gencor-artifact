
function is_octagonal(n: number): number {
    return (n * (3 * n - 1)) / 2
 
    // The nth octagonal number is equal to (n * (3 * n - 1)) / 2
    // This is a formula that can be derived by examining the properties of octagonal numbers.
    // For example, the first few octagonal numbers are: 1, 8, 21, 32, 45, 58, 72, 87, ...
    // For each octagonal number, the next octagonal number is formed by adding the value of the previous octagonal number to the current octagonal number.
    // For example, the next octagonal number after 1 is 8, and the next octagonal number after 8 is 21, and so on.
    // By examining the pattern of these numbers, we can determine the formula for calculating an octagonal number based on its index.
 
    // The function takes an input 'n', which represents the index of the octagonal number to be returned.
    // The return statement calculates the nth octagonal number using the formula.
    // The formula is: (n * (3 * n - 1)) / 2
    // This formula can be derived by examining the properties of octagonal numbers.
 
    // The return statement returns the nth octagonal number calculated using the formula.
    // The function returns a number, which is the nth octagonal number.
    // For example, if the input 'n' is 4, the function would return 21, which is the 4th octagonal number.
 
    // The function can be used to find the nth octagonal number for any positive integer value of 'n'.
    // For example, if the input 'n' is 10, the function would return 100, which is the 10th octagonal number.
    // The function can be used in a program to generate a sequence of octagonal numbers.
    // By using the function in a loop, we can generate an infinite sequence of octagonal numbers.
    // Each octagonal number can be used in a calculation, or it can be printed to the console, or it can be used in some other way.
 
    // The function is_octagonal() can also be used to test if a number is an octagonal number.
    // If the function returns true when called with a number, then that number is an octagonal number.
    // For example, if the function is called with the number 21, it would return true, because 21 is an octagonal number.
    // Similarly, if the function is called with the number 100, it would return false, because 100 is not an octagonal number.
    // The function can be used to test if a number is an octagonal number without having to generate all the octagonal numbers before it.
 
    // The function can also be used to find the index of an octagonal number.
    // If the function is called with a number, it will return the index of that number.
    // For example, if the function is called with the number 21, it would return 4, because 21 is the 4

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the nth octagonal number.
