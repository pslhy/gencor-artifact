
function count_up_to(n: number): number[] { // Function that takes in a range as a parameter
    let primes: number[] = [] // Array to store the prime numbers

    for(let i = 2; i < n; i++){ // Starting with 2 as the first prime number

        let isPrime: boolean = true; // We initially assume the number is prime

        for(let j = 2; j <= Math.sqrt(i); j++){ // Each prime has to be divided by every number before it within 2 and its square root

            if(i % j === 0){ // If a number divides evenly by any of these, it's not a prime number
                isPrime = false;
                break;
            }
        }

        if(isPrime){ // If the number passes the check, it's definitely prime
            primes.push(i);
        }
    }

    return primes; // Returns the array of prime numbers
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Implement a function that takes an non-negative integer and returns an array of the first n
//     integers that are prime numbers and less than n.
//     for example:
//     >>> count_up_to(5)
//     [2, 3]
//     >>> count_up_to(11)
//     [2, 3, 5, 7]
//     >>> count_up_to(0)
//     []
//     >>> count_up_to(20)
//     [2, 3, 5, 7, 11, 13, 17, 19]
//     >>> count_up_to(1)
//     []
//     >>> count_up_to(18)
//     [2, 3, 5, 7, 11, 13, 17]
