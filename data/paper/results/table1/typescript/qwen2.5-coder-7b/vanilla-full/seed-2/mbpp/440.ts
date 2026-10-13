function find_adverb_position(text: string): [number, number, string] { 
    const adverbRegex = /\b\w+ly\b/g;
    const result = text.match(adverbRegex);
    if (result) {
        const position = result[0].match(/\b\w+ly\b/)?.index || 0;
        return [position, position + result[0].length, result[0]];
    }
    return [-1, -1, 'No adverb found'];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the first adverb and their positions in a given sentence.
