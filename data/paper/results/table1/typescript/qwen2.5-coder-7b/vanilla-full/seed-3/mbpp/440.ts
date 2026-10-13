function find_adverb_position(text: string): [number, number, string] {
    const adverbRegex = /(\w+)ly/;
    const match = text.match(adverbRegex);
    if (match) {
        const index = text.indexOf(match[0]);
        return [index, index + match[0].length, match[1]];
    }
    throw new Error('No adverb found in the text');
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the first adverb and their positions in a given sentence.
