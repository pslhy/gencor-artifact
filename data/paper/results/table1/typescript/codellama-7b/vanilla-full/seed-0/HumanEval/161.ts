function solve(s: string): string {
  const lowerToUpper: Record<string, string> = {};
  const upperToLower: Record<string, string> = {};

  for (let i = 0; i < s.length; i++) {
    const char = s[i];
    if (char.toUpperCase() in lowerToUpper) {
      lowerToUpper[char.toUpperCase()].push(char);
    } else {
      lowerToUpper[char.toUpperCase()] = [char];
    }

    if (char.toLowerCase() in upperToLower) {
      upperToLower[char.toLowerCase()].push(char);
    } else {
      upperToLower[char.toLowerCase()] = [char];
    }
  }

  let result = "";
  for (let i = 0; i < s.length; i++) {
    const char = s[i];
    if (char.toLowerCase() in upperToLower) {
      result += upperToLower[char.toLowerCase()].pop()!;
    } else if (char.toUpperCase() in lowerToUpper) {
      result += lowerToUpper[char.toUpperCase()].pop()!;
    } else {
      result += char;
    }
  }

  return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     You are given a string s.
//     if s[i] is a letter, reverse its case from lower to upper or vise versa,
//     otherwise keep it as it is.
//     If the string contains no letters, reverse the string.
//     The function should return the resulted string.
//     Examples
//     >>> solve("1234")
//     "4321"
//     >>> solve("ab")
//     "AB"
//     >>> solve("#a@C")
//     "#A@c"
