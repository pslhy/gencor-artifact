function next_smallest_palindrome(num: number): number {
    if(num <= 0) return -1;
    let nextNum = num + 1;
    while(!isPalindrome(nextNum)){
        nextNum++;
    }
    return nextNum;
}

function isPalindrome(num: number): boolean {
    let reversed = parseInt(num.toString().split('').reverse().join(''));
    return num === reversed;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the next smallest palindrome of a specified integer, returned as an integer.
