
function newman_prime(n: number): number { 
    function isPrime(num: number): boolean {
        if (num < 2) return false;
        for (let i = 2; i <= Math.sqrt(num); i++) {
            if (num % i === 0) return false;
        }
        return true;
    }

    function newman_shanks_williams(k: number): number {
        if (k <= 1) return 1;
        return (2 * newman_shanks_williams(k - 1) + 1) * (2 * newman_shanks_williams(k - 1) + 2) - 2 * newman_shanks_williams(k - 2);
    }

    let count = 0;
    let i = 1;
    while (true) {
        let prime = newman_shanks_williams(i);
        if (isPrime(prime)) count++;
        if (count === n) return prime;
        i++;
    }
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the nth newman–shanks–williams prime number.
