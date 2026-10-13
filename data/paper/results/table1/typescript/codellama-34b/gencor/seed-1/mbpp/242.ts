
function count_charac(str1: string): number {
    let count = 0
    for (let i = 0; i < str1.length; i++) {
        count++
    }
    return count
}
console.log(count_charac('hello')); // 5

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to count the total number of characters in a string.
