function hex_key(num: string): number {
   const primes = new Set([2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37]);
   let count = 0;
   for (const digit of num) {
       const num = parseInt(digit, 16);
       if (primes.has(num)) {
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
//     You have been tasked to write a function that receives
//     a hexadecimal number as a string and counts the number of hexadecimal
//     digits that are primes (prime number, or a prime, is a natural number
//     greater than 1 that is not a product of two smaller natural numbers).
//     Hexadecimal digits are 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, A, B, C, D, E, F.
//     Prime numbers are 2, 3, 5, 7, 11, 13, 17,...
//     So you have to determine a number of the following digits: 2, 3, 5, 7,
//     B (=decimal 11), D (=decimal 13).
//     Note: you may assume the input is always correct or empty string,
//     and symbols A,B,C,D,E,F are always uppercase.
//     Examples:
//     >>> hex_key("AB")
//     1
//     >>> hex_key("1077E")
//     2
//     >>> hex_key("ABED1A33")
//     4
//     >>> hex_key("123456789ABCDEF0")
//     6
//     >>> hex_key("2020")
//     2
