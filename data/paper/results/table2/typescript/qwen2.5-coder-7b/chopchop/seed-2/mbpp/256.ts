
function count_Primes_nums(n: number): number { 
    let count = 0;
    for (let num = 2; num < n; num++) {
        if (num > 1) {
            let isPrime = true;
            for (let j = 2; j < num; j++) {
                if (num % j == 0) {
                    isPrime = false;
                    j = num;
                }
            }
            if (isPrime) count++;
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
