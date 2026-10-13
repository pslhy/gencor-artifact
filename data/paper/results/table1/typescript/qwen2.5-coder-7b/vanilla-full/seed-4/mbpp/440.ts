function find_adverb_position(text: string): [number, number, string] { 
    // Regular expression to find words ending in -ly
    const adverbRegex = /(\b\w+ly\b)/g;  
    let match;
    let startPosition = 0;

    // Iterate through all matches in the text
    while ((match = adverbRegex.exec(text)) !== null) {
        // Return the starting position, ending position and the adverb found
        return [match.index, match.index + match[0].length, match[0]];
    }

    // If no adverb is found, return -1 for positions and null for the adverb
    return [-1, -1, null];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the first adverb and their positions in a given sentence.
