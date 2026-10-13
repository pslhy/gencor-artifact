function text_match_wordz(text: string): boolean {
    const pattern = /z/;
    return pattern.test(text);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that matches a word containing 'z'.
