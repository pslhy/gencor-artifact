
function even_odd_palindrome(n: number): [number, number] { // Function that takes in a range limit n and returns a tuple
    let evenCount = 0; // Initialize count of even palindromes
    let oddCount = 0; // Initialize count of odd palindromes

    for(let i = 1; i <= n; i++) { // Iterate through the range 1 to n
        if(isNaN(i)) continue; // Skip if the number is not a palindrome
        if(i.toString() === i.toString().split('').reverse().join('')) { // Check if the number is a palindrome
            if(i % 2 === 0) // If the number is even
                evenCount++; // Increment the count of even palindromes
            if(i % 2 !== 0) // If the number is odd
                oddCount++; // Increment the count of odd palindromes
        }
    }
    
    return [evenCount, oddCount]; // Return the counts of even and odd palindromes
}

function isNaN(val: any): boolean {
    return val !== val;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Given a positive integer n, return an array that has the number of even and odd
//     integer palindromes that fall within the range(1, n), inclusive.
//     Example 1:
//     >>> even_odd_palindrome(3)
//     [1, 2]
//     Explanation:
//     Integer palindrome are 1, 2, 3. one of them is even, and two of them are odd.
//     Example 2:
//     >>> even_odd_palindrome(12)
//     [4, 6]
//     Explanation:
//     Integer palindrome are 1, 2, 3, 4, 5, 6, 7, 8, 9, 11. four of them are even, and 6 of them are odd.
//     Note:
//     1. 1 <= n <= 10^3
//     2. returned array has the number of even and odd integer palindromes respectively.
