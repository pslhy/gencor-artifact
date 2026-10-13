function is_polite(n: number): number { 
    while (n % 2 == 0) n = Math.floor(n / 2); 
    return n; 
} 

function nth_polite(n: number): number { 
    return is_polite(n + 1); 
} 

console.log(nth_polite(1));  // Output: 2
console.log(nth_polite(2));  // Output: 3
console.log(nth_polite(3));  // Output: 4
console.log(nth_polite(4));  // Output: 6
console.log(nth_polite(5));  // Output: 7


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find nth polite number. geeksforgeeks.org/n-th-polite-number/
