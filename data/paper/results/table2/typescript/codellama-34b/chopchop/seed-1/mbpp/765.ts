
function is_polite(n: number): number {
   let count = 0
   // Calculate the sum of proper divisors
   // of a given number n
   // using seive of eratosthenes.
   // for ot (int i = 1; i < n; i++) {
   // if (n % i == 0)
   // count += i
   // }
   // Return the number of perfect divisors.
   // if (count == 0)
   // count = 1
   // return count
  
   // Efficient implementation of 
   // the above function.
   // count = 1
   // for i in range(2, n // 2 + 1):
   // if (n % i == 0) {
   // count += i
   // n /= i
   // }
   // return count
  
   // O(logn) Implementation 
   // Returns the count of
   // prime divisor of n.
   // If n = p^e
   // (p is prime) then
   // return e;
   // int count = 0
   // int p = 0
   // while (n != 0) {
   // p = n % 10
   // if p = 0
   // break
   // count++
   // n = n / 10
   // }
   // if n = 1
   // return count
   // return -1
  
   // O(logn) Implementation 
   // for prime divison.
   // If n = p^e
   // (p is prime) then
   // return e;
   // function prime_divisor(n: number): number {
   // let count = 0
   // let p = 2
   // while (n != 1) {
   // if (n % p == 0) {
   // p toen(p / count)
   // count = 0
   // return p
   // }
   // p += 1
   // count += 1
   // }
   // return -1
  
  
   // if (count == 1)
   // return n
   // return -1
  
   // O(logn) Implementation 
   // using prime divisor.
   // function is_polite(n: number): number {
   // let count = 0
   // let p = 2
   // while (n != 1) {
   // if (n % p == 0) {
   // p toen(p / count)
   // count = 0
   // }
   // p += 1
   // count += 1
   // }
   // if (count == 1)
   // return n
   // return -1
  
  
  
   // O(logn) Implementation
   // if (count == 2)
   // return n
   // return -1
  
   // O(logn) Implementation
   // if (count == 3)
   // return n
   // return -1
  
   // O(logn) Implementation
   // if (count == 4)
   // return n
   // return -1
  
   // O(logn) Implementation
   // if (count == 5)
   // return n
   // return -1
  
   // O(logn) Implementation
   // if (count == 6)
   // return n
   // return -1
  
   // O(logn) Implementation
   // if (count == 7)
   // return n
   // return -1
  
  
  
   // Highest Exponent Algorithm (Highest Exponent Algorithm).
   // if (count == 1)
   // return n
   // for i in range(2, n + 1):
   // if (n % i == 0) {
   // return i
   // break
   // }
   // return -1
  
  
   // genois prime corrected
   // = Y (prime_divisor(n) ** 
   // prime_divisor(n - 1))
   // if (count2 == 1)
   // return n
   // if (count1 == 0)
   // return -1
  
   // O(logn) Implementation
   // using genois prime.
   // function isPolite(n: number): number {
   // let count1 = 0
   // let count2 = 0
   // let p = 2
   // while (n != 1) {
  
   // if (n % p

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find nth polite number. geeksforgeeks.org/n-th-polite-number/
