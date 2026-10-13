
function count_Primes_nums(n: number): number {
    if(n <= 2) return 0;
    let primes = new Array(n).fill(true);
    let count = n-2; // start from second prime number (3) to n

    for(let i = 2; i*i <= n; i++) {
        if(primes[i]) {
            for(let j = i*i; j < n; j += i) {
                if(primes[j]) {
                    primes[j] = false;
                    count--;
                }
            }
        }
    }
    return count;
}

console.log(count_Primes_nums(30)); // output: 10

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function that takes in a non-negative number and returns the number of prime numbers less than the given non-negative number.
