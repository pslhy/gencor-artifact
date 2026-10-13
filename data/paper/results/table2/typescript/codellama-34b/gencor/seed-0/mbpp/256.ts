
function count_Primes_nums(n: number): number {
    if (n === 0 || n === 1) {
        return 0;
    }
    let count = 1; // 2
    for (let i = 3; i < n; i += 2) {
        if (isNaN(i)) {
            count++;
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
