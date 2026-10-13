function newman_prime(n: number): number {
    if (n <= 1) {
        return 2;
    }
    let count = 1;
    for (let i = 3; count < n; i += 2) {
        if (is_prime(i)) {
            count++;
        }
    }
    return i - 2;
}

function is_prime(n: number): boolean {
    if (n <= 1) {
        return false;
    }
    for (let i = 2; i < Math.sqrt(n); i++) {
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
