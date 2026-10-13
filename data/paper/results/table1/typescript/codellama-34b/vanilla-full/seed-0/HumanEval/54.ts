function same_chars(s0: string, s1: string): boolean {
  const s0Chars = new Set(s0.split(""));
  const s1Chars = new Set(s1.split(""));

  if (s0Chars.size !== s1Chars.size) {
    return false;
  }

  for (const c of s0Chars) {
    if (!s1Chars.has(c)) {
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
