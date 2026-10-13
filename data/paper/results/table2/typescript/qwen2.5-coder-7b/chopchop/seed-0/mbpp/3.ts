
function is_not_prime(n: number): boolean { 
{
    if (n <= 1) return true;
    if (n <= 3) return false;

    if (n % 2 === 0 || n % 3 === 0) return true;

    for (let i = 5; i * i <= n; i += 6) {
        if (n % i === 0 || n % (i + 2) === 0) return true;
    }

    return false;
}
 
// Example usage:
let num: number = 25;
if (is_not_prime(num)) {
    // num is a non-prime number
} else {
    // num is a prime number
}
 
let v: number = 17;
if (is_not_prime(v)) {
    // v is a non-prime number
} else {
    // v is a prime number
}
 
let y: number = 4;
if (is_not_prime(y)) {
    // y is a non-prime number

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to identify non-prime numbers.
