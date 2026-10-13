function text_match_wordz_middle(text: string): boolean {
    const pattern = /^[^z]*z[^z]*$/;
    return pattern.test(text.toLowerCase());
}

console.log(text_match_wordz_middle("gvzszpz"));
console.log(text_match_wordz_middle("gvzfgzhsgz"));
console.log(text_match_wordz_middle("zfgchz"));
console.log(text_match_wordz_middle("ghjanfghzsdjdsz"));


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that checks if a strings contains 'z', except at the start and end of the word.
