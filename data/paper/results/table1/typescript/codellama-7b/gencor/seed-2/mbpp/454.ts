
function text_match_wordz(text: string): boolean {
    return text.toLowerCase().match(/z/i) ? true : false;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that matches a word containing 'z'.
