function even_odd_palindrome(n: number): [number, number] {
    let evenCount = 0;
    let oddCount = 0;
    for (let i = 1; i <= n; i++) {
        if (isPalindrome(i)) {
            if (i % 2 === 0) {
                evenCount++;
            } else {
                oddCount++;
            }
        }
    }
    return [evenCount, oddCount];
}

function isPalindrome(num: number): boolean {
    let str = num.toString();
    return str === str.split('').reverse().join('');
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
