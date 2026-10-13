function same_chars(s0: string, s1: string): boolean {
    const s0_chars = new Set(s0.split(''));
    const s1_chars = new Set(s1.split(''));
    return s0_chars.size === s1_chars.size && s0_chars.size === s0.length && s1_chars.size === s1.length;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Check if two words have the same characters.
//     >>> same_chars("eabcdzzzz", "dddzzzzzzzddeddabc")
//     true
//     >>> same_chars("abcd", "dddddddabc")
//     true
//     >>> same_chars("dddddddabc", "abcd")
//     true
//     >>> same_chars("eabcd", "dddddddabc")
//     false
//     >>> same_chars("abcd", "dddddddabce")
//     false
//     >>> same_chars("eabcdzzzz", "dddzzzzzzzddddabc")
//     false