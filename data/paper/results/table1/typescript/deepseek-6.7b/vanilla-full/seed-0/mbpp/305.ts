function start_withp(words: string[]): [string, string] {
    for(let i=0; i<words.length; i++) {
        if(words[i][0] === 'p') {
            for(let j=i+1; j<words.length; j++) {
                if(words[j][0] === 'p') {
                    return [words[i], words[j]];
                }
            }
        }
    }
    return ['', ''];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to return two words from an array of words starting with letter 'p'.
