function newman_prime(n: number): number {
    let primeCount = 1;
    let i = 1;
    while (primeCount !== n) {
        if (is_prime(i)) {
            primeCount += 1;
        }
        i++;
    }
    return i - 1;
}

function is_prime(n: number): boolean {
    if (n === 1) {
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
