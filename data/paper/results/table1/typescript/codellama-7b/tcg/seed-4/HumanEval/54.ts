function same_chars(s0: string, s1: string): boolean {
  if (s0.length !== s1.length) {
    return false;
  }
  for (const [char, count] of new Map<string, number>(s0.split('').map((c) => [c, (s0.split(c).length - 1)])
                                               .concat(new Map<string, number>(s1.split('').map((c) => [c, (s1.split(c).length - 1)]).filter(([s0, null])
	                                                   .filter(([s0, null])
	                                                   .filter(([s0, null])
	                                                   .filter(([s0, null])
	                                                   .filter(([s0, null])	                                                   .filter(([s0, null])
	                                                   .filter(([s0, null])


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