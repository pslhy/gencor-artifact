function find_adverbs(text: string): string {
    const adverbs = [];
    for (let i = 0; i < text.length; i++) {
        const word = text.slice(i);
        if (word.endsWith('ly') && !word.endsWith('ily')) {
            adverbs.push(word);
            break;
        }
    }
    return adverbs.join(', ');
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the first adverb ending with ly and its positions in a given string.