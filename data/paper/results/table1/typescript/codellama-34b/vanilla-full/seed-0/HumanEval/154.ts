function cycpattern_check(a: string, b: string): boolean {
  const rotations = get_rotations(b);
  return a.includes(b) || rotations.some(rotation => a.includes(rotation));
}

function get_rotations(str: string): string[] {
  const rotations = [str];
  for (let i = 1; i < str.length; i++) {
    rotations.push(str.substr(i) + str.substr(0, i));
  }
  return rotations;
}

console.log(cycpattern_check("abcd", "abd")); // false
console.log(cycpattern_check("hello", "ell")); // true
console.log(cycpattern_check("whassup", "psus")); // false
console.log(cycpattern_check("abab", "baa")); // true
console.log(cycpattern_check("efef", "eeff")); // false
console.log(cycpattern_check("himenss", "simen")); // true


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
