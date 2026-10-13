function is_multiply_prime(a: number): boolean {
    if(a < 2) return false;
    let primeFactors: number[] = [];
    while(a % 2 === 0) {
        primeFactors.push(2);
        a = Math.floor(a / 2);
    }
    let sqrtA: number = Math.sqrt(a);
    for(let i: number = 3; i <= sqrtA; i += 2) {
        while(a % i === 0) {
            primeFactors.push(i);
            a = Math.floor(a / i);
        }
    }
    if(a > 2) primeFactors.push(a);

    return primeFactors.length === 3 && 
           primeFactors[0] * primeFactors[1] * primeFactors[2] === a;
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
