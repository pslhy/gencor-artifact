
function count_Primes_nums(n: number): number {
    let count = 0
    // loop from 2 to n
    // add one to count if a number is a prime
    // return the count at the end
    // for (var i = 2; i < n; i++) {
    //     let flag = false;
    //     for (var j = 2; j * j <= i; j++) {
    //         if (i % j == 0) {
    //             flag = true;
    //             break;
    //         }
    //     }
    //     if (flag === false) count++;
    // }
    // return count;

// 2. Prime number logic refactored using Filter and Reduce

// function cntPrimes(n) {
//     return n.filter(n => (n = Math.sqrt(n)) % 1 != 0 ? false : n.reduce((p, d) => p += (d % 2 && d % 3 && d % 5 && d % 7) ? 0 : 1))
// }

// 3. Prime number logic improved using Array.from

// function count_Primes_nums(n: number): number {
//     let count = 0
//     Array.from(Array(n), (v, i) => i > 1 ? (i: any === Math.sqrt(i) ? i : NaN)).reduce((p, d) => p += (d == d ? 1 : 0))
//     return count
// }

// 4. Refactoring code to use Typescript interface

// interface Number_to_Primes {
//     (n: number): Array<number>
// }

// let n_toPrimes: Number_to_Primes = (n: number): Array<number> => {
//     let nums: Array<number> = []
//     for (var i = 2; i < n; i++) {
//         nums.push(i)
//     }
//     return nums
// }

// function count_Primes_nums(n: number): number {
//     let count = 0
//     let nums = n_toPrimes(n)
//     nums.forEach(d => {
//         for (var i = 2; i * i <= d; i++) {
//             if (d % i == 0) break
//         }
//         count += (i * i > d ? 1 : 0)
//     })
//     return count
// }

// console.log(count_Primes_nums(1000000000))

// 5. More efficient way using Sieve of Eratosthenes implementation

// function count_Primes_nums(n: number): number {
//     let count = 0
//     let nums = n_toPrimes(n)
//     let sieve = []
//     sieve.length = n

//     for (var i = 0; i < n; i++) {
//         if (sieve[i]) continue
//         count += 1
//         for (var j = i + i; j < n; j += i) {
//             sieve[j] = true
//         }
//     }

//     return count
// }

// console.log(count_Primes_nums(100000000))

// 6. Using BigInt - only works for very large numbers

// function count_Primes_bigInt(n: bigint): bigint {
//     let count = 0
//     let nums = n_toBigInt(n)
//     let sieve = []
//     sieve.length = n

//     for (var i = 0n; i < n; i++) {
//         if (sieve[i]) continue
//         count += 1n
//         for (var j = i + i; j < n; j += i) {
//             sieve[j] = true
//         }
//     }

//     return count
// }

// console.log(count_Primes_bigInt(10000000000n))

// 7. Using ES6 generated sequences with an iterator and takeWhile

// function count_Primes_nums(n: number): number {
//     let count = 0
//     let

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function that takes in a non-negative number and returns the number of prime numbers less than the given non-negative number.
