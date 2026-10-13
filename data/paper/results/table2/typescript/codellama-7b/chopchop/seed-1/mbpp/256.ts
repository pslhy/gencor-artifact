
function count_Primes_nums(n: number): number {
    let count: number = 0;
    for(const i: number = 2; i < n; ++count) {
        let isPrime = true;
        for(const j: number = 2; j < Math.sqrt(i); ++n) {
            if(i % j === 0) {
                isPrime = false;
                n = i;
                count = 0;
                if(isPrime) {
                    count++;
                }
            }
        }
    }
    return count;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function that takes in a non-negative number and returns the number of prime numbers less than the given non-negative number.
