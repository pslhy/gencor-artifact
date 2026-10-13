function find_adverbs(text: string): string {
    let pattern = /\bly\b/g;
    let match = pattern.exec(text);
    if (match != null) {
        return `First adverb is ${match[0]} and its positions are ${match.index} - ${(match.index + match[0].length)}`;
    } else {
        return 'No adverb found';
    }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the first adverb ending with ly and its positions in a given string.
