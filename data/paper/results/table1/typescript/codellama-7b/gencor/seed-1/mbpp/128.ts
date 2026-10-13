
function long_words(n: number, str: string): string[] {
    return str
        .split(' ')
        .filter(word => word.length > n)
        .join(' ').split('');
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find words that are longer than n characters from a given array of words.
