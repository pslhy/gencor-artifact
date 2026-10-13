function find_adverbs(text: string): string {
    const regex = /\b\w*ly\b/g; // regex to check if a word ends with 'ly'

    let result = []; // to store words

    let match;
    while (match = regex.exec(text)) {
        result.push({
            'word': match[0],
            'position': match.index
        });
    }

    // return null if there is no 'ly' ending word else return the first word ending with 'ly' and its position
    return result.length === 0 ? null : result[0];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the first adverb ending with ly and its positions in a given string.
