function cycpattern_check(a: string, b: string): boolean {
  const aRotations = a.split('').map((c, i) => ({ c, i })).sort((a, b) => b.i - a.i).map(({ c }) => c);
  const bRotations = b.split('').map((c, i) => ({ c, i })).sort((a, b) => b.i - a.i).map(({ c }) => c);
  const aRotationsSet = new Set<string>([...aRotations]);
  const bRotationsSet = new Set<string>([...bRotations]);
  let rotationsMatch = bRotationsSet.size === aRotationsSet.size;
  if (rotationsMatch) {
    for (const bRotation of bRotationsSet) {
      if (!aRotationsSet.has(bRotation)) {
        rotationsMatch = false;
        break;
      }
    }
  }
  return rotationsMatch && a.includes(b);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     You are given 2 words. You need to return true if the second word or any of its rotations is a substring in the first word
//     >>> cycpattern_check("abcd", "abd")
//     false
//     >>> cycpattern_check("hello", "ell")
//     true
//     >>> cycpattern_check("whassup", "psus")
//     false
//     >>> cycpattern_check("abab", "baa")
//     true
//     >>> cycpattern_check("efef", "eeff")
//     false
//     >>> cycpattern_check("himenss", "simen")
//     true
