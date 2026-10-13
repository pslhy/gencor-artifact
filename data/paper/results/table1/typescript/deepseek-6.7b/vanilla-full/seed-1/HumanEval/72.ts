function will_it_fly(q: number[], w: number): boolean {
    // Check if the array is palindromic.
    const isPalindrome = (arr: number[]): boolean => arr.toString() === arr.reverse().toString();

    // Check if the sum of the array elements is less than or equal to w.
    const isLessOrEqual = (arr: number[]): boolean => arr.reduce((a, b) => a + b, 0) <= w;

    return isPalindrome(q) && isLessOrEqual(q);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that returns true if the object q will fly, and false otherwise.
//     The object q will fly if it's balanced (it is a palindromic array) and the sum of its elements is less than or equal the maximum possible weight w.
//     Example:
//     >>> will_it_fly([1, 2], 5)
//     false
//     # 1+2 is less than the maximum possible weight, but it's unbalanced.
//     >>> will_it_fly([3, 2, 3], 1)
//     false
//     # it's balanced, but 3+2+3 is more than the maximum possible weight.
//     >>> will_it_fly([3, 2, 3], 9)
//     true
//     # 3+2+3 is less than the maximum possible weight, and it's balanced.
//     >>> will_it_fly([3], 5)
//     true
//     # 3 is less than the maximum possible weight, and it's balanced.
