
function find_adverbs(text: string): string {
    const adverbs = new Set<string>();
    const positions = new Set<number>();
    for (let i = 0; i < text.length - 3; i++) {
        const word = text.substring(i, i + 3);
        if (word.endsWith('ly')) {
            adverbs.add(word);
            positions.add(i);
        }
    }
    return `[${Array.from(adverbs).join(', ')}] (${Array.from(positions).join(', ')})`;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the first adverb ending with ly and its positions in a given string.
