function start_withp(words: string[]): [string, string] { 
    let count = 0;
    let result: [string, string] = ["", ""];
    for (let word of words) {
        if (word.startsWith('p') && count < 2) {
            result[count] = word;
            count++;
        }
    }
    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to return two words from an array of words starting with letter 'p'.
