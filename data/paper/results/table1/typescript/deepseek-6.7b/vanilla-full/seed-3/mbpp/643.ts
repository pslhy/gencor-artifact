function text_match_wordz_middle(text: string): boolean {
    let words = text.split(' ');
    for (let word of words) {
        if (word.length > 2 && word.charAt(0) !== 'z' && word.charAt(word.length - 1) !== 'z') {
            return true;
        }
    }
    return false;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that checks if a strings contains 'z', except at the start and end of the word.
