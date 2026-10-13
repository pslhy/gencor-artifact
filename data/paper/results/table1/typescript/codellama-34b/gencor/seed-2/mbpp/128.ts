
function long_words(n: number, str: string): string[] {
    let words = str.split(' ');
    return words.filter(word => word.length > n);
}

// sample usage
const words = "the quick brown fox jumps over the lazy dog".split(' ');
console.log(long_words(5, words.join(' ')));

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find words that are longer than n characters from a given array of words.
