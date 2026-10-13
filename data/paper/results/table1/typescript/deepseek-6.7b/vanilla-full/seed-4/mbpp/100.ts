function next_smallest_palindrome(num: number): number {
    num = num + 1;

    while (!isPalindrome(num)) {
        num += 1;
    }

    return num;
}

function isPalindrome(num: number): boolean {
    let reverseNumber = Number(num.toString().split('').reverse().join(''));
    return num == reverseNumber;
}

console.log(next_smallest_palindrome(12321));  // Output: 12421
console.log(next_smallest_palindrome(12345));  // Output: 12421


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the next smallest palindrome of a specified integer, returned as an integer.
