function is_multiply_prime(a: number): boolean {
    if (a <= 100) {
        let factors = get_prime_factors(a);
        if (factors.length === 3) {
            return true;
        }
    }
    return false;
}

function get_prime_factors(a: number): number[] {
    let factors = [];
    let b = 2;
    while (b <= a) {
        if (a % b === 0) {
            factors.push(b);
            a /= b;
        }
        b++;
    }
    factors.push(a);
    return factors;
}


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
