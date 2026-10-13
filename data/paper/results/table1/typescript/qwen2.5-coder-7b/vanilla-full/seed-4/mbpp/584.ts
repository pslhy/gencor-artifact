function find_adverbs(text: string): string { 
    // Regular expression to find words ending with 'ly'
    const adverbRegex = /(\b\w+ly\b)/g;  
    let match: RegExpExecArray | null;
    let adverb = "";
    let positions: string[] = [];
    
    // Loop through all matches in the text
    while ((match = adverbRegex.exec(text)) !== null) { 
        adverb = match[1]; 
        positions.push(`Found adverb: ${adverb} at position: ${match.index}`);
    }
    
    return positions.join("\n");
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the first adverb ending with ly and its positions in a given string.
