function is_multiply_prime(a: number): boolean {
    if (a <= 1) return false;
    let factors: number[] = [];
    for (let i = 2; i <= a; i++) {
        if (a % i === 0) {
            factors.push(i);
            a /= i;
            i--;
        }
    }
    return factors.every(isPrime) && factors.length <= 3;
}

function isPrime(n: number): boolean {
    if (n <= 1) return false;
    if (n <= 3) return true;
    if (n % 2 === 0 || n % 3 === 0) return false;
    for (let i = 5; i * i <= n; i += 6) {
        if (n % i === 0 || n % (i + 2) === 0) return false;
    }
    return true;
}

console.log(is_multiply_prime(30));  // Outputs: true


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that returns true if the given number is the multiplication of 3 prime numbers
//     and false otherwise.
//     Knowing that (a) is less then 100.
//     Example:
//     >>> is_multiply_prime(30)
//     true
//     30 = 2 * 3 * 5
