function newman_prime(n: number): number {
    let isPrime = false;
    let i = 1;
    while (!isPrime) {
        let isPrimeCandidate = true;
        for (let j = 1; j < i; j++) {
            if (i % j === 0) {
                isPrimeCandidate = false;
                break;
            }
        }
        if (isPrimeCandidate) {
            n--;
            if (n === 0) {
                isPrime = true;
            } else {
                i++;
            }
        } else {
            i++;
        }
    }
    return i;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the nth newman–shanks–williams prime number.
