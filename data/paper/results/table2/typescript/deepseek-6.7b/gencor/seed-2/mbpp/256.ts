
function count_Primes_nums(n: number): number {
    let arr = Array(n).fill(true);
    let count = 0;

    for (let i = 2; i * i <= n; i++) {
        if (arr[i]) {
            for (let j = i * i; j < n; j+= i) {
                arr[j] = false;
            }
        }
    }

    for (let i = 2; i < arr.length; i++) {
        if (arr[i]) {
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
