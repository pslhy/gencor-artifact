
function start_withp(words: string[]): [string, string] {
    let result: [string, string] = [null!, null!];
    for (let i = 0; i < words.length; i++) {
        if (words[i].indexOf('p') === 0) {
            result[0] = result[0] ? result[0] : words[i];
            result[1] = words[i];
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
