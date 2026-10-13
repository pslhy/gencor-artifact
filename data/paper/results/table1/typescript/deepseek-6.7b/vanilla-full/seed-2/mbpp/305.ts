function start_withp(words: string[]): [string, string] {
    let word1 = "";
    let word2 = "";
    let count = 0;

    for(let word of words) {
        if(word.toLowerCase().startsWith("p") && count < 2) {
            if(count === 0) {
                word1 = word;
            } else if(count === 1) {
                word2 = word;
            }
            count++;
        }
    }
    return [word1, word2];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to return two words from an array of words starting with letter 'p'.
