function same_chars(s0: string, s1: string): boolean {
  if(s0.length != s1.length){
    return false;
  }
  const map = new Map<string, number>();
  for(const char of s0){
    if(map[char]){
      map[char]++;
    } else {
      map[char] = 1;
    }
  }
  for(const char of s1){
    if(!map[char] > 0){
      return false;
    }
    map[char]--;
  }
  return true;


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
