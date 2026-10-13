function find_adverbs(text: string): string {
    const adverbs = [];
    let position = 0;

    for (const word of text.split(' ')) {
        if (word.endsWith('ly')) {
            adverbs.push(word);
            position += (word.length + 1);
        }
    }

    return [adverbs.join(', '), position];
}

// test the function
console.log(find_adverbs('The quickly fat fox jumped over the empty sofa'));


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the first adverb ending with ly and its positions in a given string.
