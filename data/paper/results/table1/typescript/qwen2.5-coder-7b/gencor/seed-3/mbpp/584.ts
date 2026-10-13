
function find_adverbs(text: string): string {
    const adverbPattern = /(\b\w+ly\b)/g;
    const matches = text.match(adverbPattern);
    if (matches) {
        const firstAdverb = matches[0];
        const firstAdverbMatch = text.match(adverbPattern);
        if (firstAdverbMatch) {
            const positions = firstAdverbMatch.index + 1;
            return `${firstAdverb} ${positions}`;
        }
    }
    return "No adverb found.";
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the first adverb ending with ly and its positions in a given string.
