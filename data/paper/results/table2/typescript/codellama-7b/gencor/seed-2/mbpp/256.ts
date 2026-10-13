
function count_Primes_nums(n: number): number {
    if (n <= 2) {
        return 0;
    }

    let count: number = 1; // 2 is the only even prime number
    for (let i: number = 3; i < n; i += 2) {
        let is_prime: boolean = true;
        for (let j: number = 3; j * j <= i; j += 2) {
            if (i % j == 0) {
                is_prime = false;
                break;
            }
        }
        if (is_prime) {
            count += 1;
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
