function count_upper(s: string): number {
  const vowels: string = 'AEIOU';
  const upper_vowels: string = vowels.toUpperCase();
  return s
    .split('')
    .filter((c, i) => i % 2 === 0 && upper_vowels.includes(c))
    .length;
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
