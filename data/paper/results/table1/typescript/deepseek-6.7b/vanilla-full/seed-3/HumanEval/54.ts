function same_chars(s0: string, s1: string): boolean {
    const count = (s: string) => s.split('').reduce((acc, c) => acc.set(c, 1 + (acc.get(c) || 0)), new Map<string, number>())
    return JSON.stringify([...count(s0).entries()].sort()) === JSON.stringify([...count(s1).entries()].sort())
}

console.log(same_chars("eabcdzzzz", "dddzzzzzzzddeddabc")) // true
console.log(same_chars("abcd", "dddddddabc")) // true
console.log(same_chars("dddddddabc", "abcd")) // true
console.log(same_chars("eabcd", "dddddddabc")) // false
console.log(same_chars("abcd", "dddddddabce")) // false
console.log(same_chars("eabcdzzzz", "dddzzzzzzzddddabc")) // false


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
