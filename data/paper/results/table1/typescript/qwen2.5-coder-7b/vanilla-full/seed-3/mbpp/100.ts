function next_smallest_palindrome(num: number): number {
    let nextNum = num + 1;
    while (!is_palindrome(nextNum)) {
        nextNum++;
    }
    return nextNum;
}

function is_palindrome(n: number): boolean {
    const str = n.toString();
    return str === str.split('').reverse().join('');
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the next smallest palindrome of a specified integer, returned as an integer.
