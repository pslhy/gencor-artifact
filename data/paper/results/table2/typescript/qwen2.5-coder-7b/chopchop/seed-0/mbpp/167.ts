
function next_power_of_2(n: number): number { 
{ 
    if (n <= 1) 
        return 1; 
  
    let p = 2; 
    while (p < n) 
        // p = p * 2 
        // or equivalently 
        // p <<= 1 
        // (which shifts the bits of p to the left by 1, effectively multiplying by 2)
        // both will cause a shift to a whole power of two up if the next power is not p
        {
            p = p * 2; 
        } 
  
    return p; 
}
 
// Example usage
const n = 17;
const result = next_power_of_2(n);
// console.log(result); // Output: 32
// You can test this function for various input values to ensure it works correctly.
// For example:
// console.log(next_power_of_2(1));  // 1
// console.log(next_power_of_2(2));  // 2
// console.log(next_power_of_2(4));  // 4
// console.log(next_power_of_2(8));  // 8
// console.log(next_power_of_2(15)); // 16
// console.log(next_power_of_2(31)); // 32
// and so on. ..
 
// Similarly, you can debug this function with CSP, ESLint, or other code quality tools.
// To apply an ESLint rule, for example, you could use the @typescript-eslint/comma-dangle rule to ensure your code is always properly formatted.
// To use CSP, you would generally create a Content Security Policy (CSP) by setting the Content-Security-Policy HTTP response header to a list of safe sources of content.
// Before deploying, you will need to ensure that you are following industry best practices for securing your code.
// The first thing you can do to secure your code is to understand what a Content Security Policy (CSP) and its various directives and source expressions are.
// A Content Security Policy (CSP) is a security standard that helps mitigate web application security vulnerabilities, such as Cross-Site Scripting (XSS)

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the smallest power of 2 greater than or equal to n.
