function find_adverbs(text: string): string { 
    const regex = /\b\w+ly\b/g;
    let match;
    let result = "Adverbs found: ";
    while ((match = regex.exec(text)) !== null) {
        result += `${match[0]} at position ${match.index}, `;
    }
    return result.trim() + '.';
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the first adverb ending with ly and its positions in a given string.
