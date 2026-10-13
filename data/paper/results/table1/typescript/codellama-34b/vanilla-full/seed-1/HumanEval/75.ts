function is_multiply_prime(a: number): boolean {
    let isPrime = true;

    if(a < 2 || a % 2 == 0)
        isPrime = false;
    else {
        for (let i = 3, end = Math.sqrt(a); i < end; i++) {
            if (a % i == 0) {
                isPrime = false;
            }
        }
    }

    return isPrime;
}

console.log(is_multiply_prime(30));


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
