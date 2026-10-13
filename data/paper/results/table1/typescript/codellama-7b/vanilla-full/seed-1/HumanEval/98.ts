function count_upper(s: string): number {
    let count = 0;
    for (let i = 0; i < s.length; i += 2) {
        if (is_upper_vowel(s[i])) {
            count += 1;
        }
    }
    return count;
}

function is_upper_vowel(c: string): boolean {
    const vowels = ['A', 'E', 'I', 'O', 'U'];
    return c.toUpperCase() === c && vowels.includes(c);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Given a string s, count the number of uppercase vowels in even indices.
//     For example:
//     >>> count_upper("aBCdEf")
//     1
//     >>> count_upper("abcdefg")
//     0
//     >>> count_upper("dBBE")
//     0
