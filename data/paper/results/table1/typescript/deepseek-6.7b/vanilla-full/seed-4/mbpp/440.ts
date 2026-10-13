function find_adverb_position(text: string): [number, number, string] {
    const words = text.split(' ');
    const regularExpressions = ['s(ly|ch|ly|ough)', 'more', 'most', 'enough', 'far', 'hard', 'slow', 'well', 'worse', 'cold', 'dark', 'dead', 'early', 'fast', 'hungry', 'high', 'red', 'bad', 'hot', 'long', 'hard', 'big', 'low', 'old', 'tired', 'fat', 'white', 'clear', 'loud', 'thin', 'red', 'free', 'bad', 'hot', 'right', 'small'];
    const regex = new RegExp(`\\b(${regularExpressions.join('|')})\\b`, 'gi');

    for (let i = 0; i < words.length; i++) {
        if (words[i].match(regex)) {
            const word = words[i].replace(/[.,;:]/g, '');
            return [i, i+1, word];
        }
    }
    return [-1, -1, ''];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the first adverb and their positions in a given sentence.
