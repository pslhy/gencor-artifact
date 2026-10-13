
function find_adverb_position(text: string): [number, number, string] {
    let adverb: string | undefined;
    for (const word of text.split(' ')) {
        if (['very', 'also', 'really', 'extremely', 'enough', 'actually', 'seriously', 'literally'].includes(word)) {
            adverb = word;
        }
    }

    if (adverb) {
        const index = text.indexOf(adverb);
        return [index, index + 1 + (adverb.length - 1), adverb];
    }

    return [-1, -1, ''];
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the first adverb and their positions in a given sentence.
