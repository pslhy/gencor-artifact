function same_chars(s0: string, s1: string): boolean {    
    const countChars = (s: string): { [key: string]: number } => {
        return s.split('').reduce((acc, char) => {
            acc[char] = (acc[char] || 0) + 1;
            return acc;
        }, {} as { [key: string]: number });
    };

    const s0Count = countChars(s0);
    const s1Count = countChars(s1);

    for (let char in s0Count) {
        if (!(char in s1Count) || s0Count[char] !== s1Count[char]) {
            return false;
        }
    }

    for (let char in s1Count) {
        if (!(char in s0Count) || s1Count[char] !== s0Count[char]) {
            return false;
        }
    }

    return true;
}

// test cases
console.log(same_chars("eabcdzzzz", "dddzzzzzzzddeddabc")); // true
console.log(same_chars("abcd", "dddddddabc")); // true
console.log(same_chars("dddddddabc", "abcd")); // true
console.log(same_chars("eabcd", "dddddddabc")); // false
console.log(same_chars("abcd", "dddddddabce")); // false
console.log(same_chars("eabcdzzzz", "dddzzzzzzzddddabc")); // false


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
