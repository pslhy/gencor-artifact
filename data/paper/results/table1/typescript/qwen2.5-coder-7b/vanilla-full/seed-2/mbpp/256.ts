function count_Primes_nums(n: number): number { 
    let count = 0;
    for (let num = 2; num < n; num++) {
        if (isPrime(num)) {
            count++;
        }
    }
    return count;
}

function isPrime(num: number): boolean { 
    for (let i = 2, s = Math.sqrt(num); i <= s; i++)
        if (num % i === 0) return false; 
    return num > 1;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function that takes in a non-negative number and returns the number of prime numbers less than the given non-negative number.
