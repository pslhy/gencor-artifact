function text_match_wordz_middle(text: string): boolean {
    const word = 'z';
    const start = 0;
    const end = text.length - 1;
    if (text[start] === word) {
        return false;
    }
    if (text[end] === word) {
        return false;
    }
    for (let i = 1; i < text.length - 1; i++) {
        if (text[i] === word) {
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
