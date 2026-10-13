function find_adverbs(text: string): string { 
    let adverbEnding = text.match(/ly\b/g);
    if (adverbEnding) {
        let adverb = adverbEnding[0];
        let position = text.indexOf(adverb);
        return `${adverb} found at position ${position}`;
    } else {
        return 'No adverb ending with ly found.';
    }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the first adverb ending with ly and its positions in a given string.
