
function find_adverb_position(text: string): [number, number, string] { 
    // Regular expression to find words ending in -ly
    const adverbRegex = /(\b\w+ly\b)/g;  
    let match: RegExpExecArray | null;
    
    // Iterate through the text to find the first match
    while ((match = adverbRegex.exec(text)) !== null) {
        // Return the start position, end position, and adverb
        return [match.index, match.index + (match[0].length - 1), match[0]];
    }
    
    // Return -1, -1, and an empty string if no adverb is found
    return [-1, -1, ''];
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the first adverb and their positions in a given sentence.
