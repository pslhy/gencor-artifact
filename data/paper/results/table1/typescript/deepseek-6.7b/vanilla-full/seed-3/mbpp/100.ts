function next_smallest_palindrome(num: number): number {
    if (isPalindrome(num + 1)) {
        return num + 1;
    } else {
        return next_smallest_palindrome(num + 1);
    }
}

function isPalindrome(num: number): boolean {
    let strNum = num.toString();
    let reversedStrNum = strNum.split('').reverse().join('');

    return strNum === reversedStrNum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the next smallest palindrome of a specified integer, returned as an integer.
