function last_Digit_Factorial(n: number): number { 
    if (n >= 10) { 
        return 0; 
    } 
    let product = 1; 
    for (let i = 1; i <= n; i++) { 
        product = (product * (i % 10)) % 10; 
    } 
    return product % 10; 
}

// Example usage:
console.log(last_Digit_Factorial(4)); // Output: 4
console.log(last_Digit_Factorial(5)); // Output: 0
console.log(last_Digit_Factorial(10)); // Output: 0
console.log(last_Digit_Factorial(15)); // Output: 0


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the last digit in factorial of a given number.
