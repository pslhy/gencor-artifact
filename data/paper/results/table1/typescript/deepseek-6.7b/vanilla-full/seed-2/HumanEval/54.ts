function same_chars(s0: string, s1: string): boolean {
    const hist0 = createCharHist(s0), hist1 = createCharHist(s1);
    for (const c of s0 + s1) {
        if (hist0[c] !== hist1[c]) {
            return false;
        }
    }
    return true;
}

function createCharHist(s: string): {[char: string]: number} {
    const hist: {[char: string]: number} = {};
    for (const c of s) {
        hist[c] = (hist[c] || 0) + 1;
    }
    return hist;
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
