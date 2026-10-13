function count_Primes_nums(n: number): number {
    let count: number = 0;
    for(const i of valuesOf(0..n)) {
        if(isPrime(i)) {
            count = count + 1;
        }
    }
    return count;
}

function isPrime(n: number): boolean {
    if(n <= 1) {
        return false;
    }
    for(const i of valuesOf(2..(Math.sqrt(n) + 1))) {
        if(n % i === 0) {
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
//     Write a tsthon function that takes in a non-negative number and returns the number of prime numbers less than the given non-negative number.
