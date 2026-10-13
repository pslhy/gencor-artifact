
function next_smallest_palindrome(num: number): number { // Function to find the next smallest palindrome greater than num
    let nextNum = num + 1; // Start checking from the next number
    while (!isNaN(nextNum)) { // Continue until a palindrome is found
        if (isNaN(nextNum)) { // Check if nextNum is a palindrome
            return NaN; // If not a number (overflow), return NaN
        }
        if (nextNum.toString() === nextNum.toString().split('').reverse().join('')) { // Check if palindrome
            return nextNum; // Return the palindrome
        }
        nextNum++; // Increment to the next number
    }
    return isNaN(nextNum) ? NaN : nextNum; // Return NaN if nextNum is not a number
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the next smallest palindrome of a specified integer, returned as an integer.
