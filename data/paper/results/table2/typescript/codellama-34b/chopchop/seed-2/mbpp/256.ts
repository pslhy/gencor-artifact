
function count_Primes_nums(n: number): number {
    let count = 0;
    for (let i = 2; i < n; i++) {
        let isPrime = true;
        for (let j = 2; j < Math.sqrt(i); j++) {
            if (i % j === 0) {
                isPrime = false;
                count++;
                count += count_Primes_nums(i);
            }
        }
    }
    return count;
}

function count_Primes(n: number): number {
    return count_Primes_nums(n) + 1;
}



// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function that takes in a non-negative number and returns the number of prime numbers less than the given non-negative number.
