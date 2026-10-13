function find_adverbs(text: string): string {
    let adverbs = text.match(/\b[A-Za-z]*ly\b/g);
    if (adverbs === null) return "No adverbs found";

    let adverb = adverbs.filter(word => word.endsWith('ly'));
    let positions = [];
    
    for (let word of adverb) {
        positions.push({
            adverb: word,
            position: text.indexOf(word)
        });
        text = text.replace(word,'');
    }
    return JSON.stringify(positions, null, 2);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the first adverb ending with ly and its positions in a given string.
