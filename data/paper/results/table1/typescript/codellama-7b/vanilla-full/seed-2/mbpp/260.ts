function newman_prime(n: number): number {
    let i = 1;
    let j = 1;
    while (i < n) {
        let k = i;
        while (j >= 1) {
            k = k * 10 + j;
            j++;
        }
        if (isPrime(k)) {
            i++;
        }
        j = 1;
    }
    return i;
}

function isPrime(n: number): boolean {
    if (n === 1 || n === 0) {
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
