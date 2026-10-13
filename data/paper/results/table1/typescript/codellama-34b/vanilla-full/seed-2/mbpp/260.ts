function newman_prime(n: number): number {
    let prime = 2;
    for (let i = 1; i < n; i++) {
        let composite = prime;
        while (true) {
            composite = composite + prime;
            if (isPrime(composite)) {
                break;
            }
        }
        prime = composite;
    }
    return prime;
}

function isPrime(n: number): boolean {
    if (n < 2) {
        return false;
    }
    for (let i = 2; i * i <= n; i++) {
        if (n % i === 0) {
            return false;
        }
    }
    return true;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the nth newman–shanks–williams prime number.
