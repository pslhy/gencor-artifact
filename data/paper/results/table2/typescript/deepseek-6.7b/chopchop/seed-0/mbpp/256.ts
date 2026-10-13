
function count_Primes_nums(n: number): number {
    if(n <= 2) return 0;
    let primes = true;
    let count = 0;
    for(let i = 2; i < n; i++){
        primes = true;
        for(let j = 2; j * j <= i; j++){
            if(i % j === 0){
                primes = false;
                // if its not a prime, break from the internal loop
                // as we already know the number is not prime
                // and there's no need to check further
                j = i; 
            }
        }
        if(primes) count++;
    }
    return count;
}


// Test cases

// Should return 0
count_Primes_nums(1); 
// Should return 4
count_Primes_nums(15); 
// Should return 9
count_Primes_nums(

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function that takes in a non-negative number and returns the number of prime numbers less than the given non-negative number.
