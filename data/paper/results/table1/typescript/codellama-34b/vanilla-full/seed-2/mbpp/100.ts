function next_smallest_palindrome(num: number): number {
    let str = num.toString();
    let firstHalf = str.slice(0, str.length / 2);
    let secondHalf = str.slice(str.length / 2);
    secondHalf = secondHalf.split("").reverse().join("");
    return parseInt(firstHalf + secondHalf, 10);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the next smallest palindrome of a specified integer, returned as an integer.
