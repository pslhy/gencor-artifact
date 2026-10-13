
function count_Primes_nums(n: number): number {
    let arr = (n < 2) ? 0 : 1;

    for (let i = 3; i < n; i += 2) {
        let sqrtI = Math.sqrt(i);
        let isPrime = true;

        for (let j = 3; j <= sqrtI; j += 2) {
            if (i % j === 0) {
                isPrime = false;
                j = i;
            }
        }

        if (isPrime) {
            arr++;
        }
    }

    return arr;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function that takes in a non-negative number and returns the number of prime numbers less than the given non-negative number.
