function reverse_words(s: string): string {
    let words = s.split(' ');
    return words.reverse().join(' ');
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to reverse words seperated by spaces in a given string.
