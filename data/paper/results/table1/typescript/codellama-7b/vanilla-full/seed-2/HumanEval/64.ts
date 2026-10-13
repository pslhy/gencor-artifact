function vowels_count(s: string): number {
  let count = 0;
  for (const c of s) {
    if (["a", "e", "i", "o", "u"].indexOf(c.toLowerCase()) !== -1) {
      count++;
    }
    else if (c.toLowerCase() === "y" && s.length > 1 && s[s.length - 2] !== "a") {
      count++;
    }
  }
  return count;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function vowels_count which takes a string representing
//     a word as input and returns the number of vowels in the string.
//     Vowels in this case are 'a', 'e', 'i', 'o', 'u'. Here, 'y' is also a
//     vowel, but only when it is at the end of the given word.
//     Example:
//     >>> vowels_count("abcde")
//     2
//     >>> vowels_count("ACEDY")
//     3
