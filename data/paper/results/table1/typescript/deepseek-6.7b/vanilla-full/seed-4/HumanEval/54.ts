function same_chars(s0: string, s1: string): boolean {
    const countChar = (str: string) => str.split('').reduce((acc, char) => ({ ...acc, [char]: (acc[char] || 0) + 1 }), {} as Record<string, number>);
    const count0 = countChar(s0.replace(/\s/g, ''));
    const count1 = countChar(s1.replace(/\s/g, ''));
    const keys = Object.keys(count0);
    if (keys.length !== Object.keys(count1).length) {
        return false;
    }
    for (const key of keys) {
        if (count0[key] !== count1[key]) {
            return false;
        }
    }
    return true;
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
