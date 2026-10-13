
function is_nested(string: string): boolean {
  let stack: number[] = [];

  for (let char of string) {
    if (char === '[') {
      stack.push(char.charCodeAt(0));
    } else if (char === ']') {
      if (stack.length === 0) {
        return false;
      }

      let previousChar = stack.pop()!;
      if (previousChar === '['.charCodeAt[0]);

      return true;
  }

  return stack.length === 0;
}

console.log(is_nested("[[]]")); // true
console.log(is_nested("[]]]]]]][[[[[]")); // false
console.log(is_nested("[][]")); // false
console.log(is_nested("[]")); // false
console.log(is_nested("[[][]]")); // true
console.log(is_nested("[[]][[")); // true
console.log(is_nested("[[[[[]]]]")); // true
console.log(is_nested("[[[]]]]")); // false
console.log(is_nested("[[[]][]")); // false
console.log(is_nested("[[[]]")); // false
console.log(is_nested("[[[]")); // false
console.log(is_nested("[[]]")); // false
console.log(is_nested("[[]")); // false
console.log(is_nested("[]]")); // false
console.log(is_nested("[]")); // false
console.log(is_nested("[")); // false
console.log(is_nested("]")); // false
console.log(is_nested("")); // false
console.log(is_nested("[[[[[[]]]][][][[[]]][[[[]]]][][][][[[]][]]")); // true
console.log(is_nested("[[[[[[]]]][][][[[]]][[[[]]]][][][][[[[]]]]]")); // true
console.log(is_nested("[[[[[[]]]][][][[[]]][[[[]]]][][][][[[]][]]")); // true
console.log(is_nested("[[[[[[]]]][][][[[]]][[[[]]]][][][][[[[]]]]]")); // true
console.log(is_nested("[[[[[[]]]][][][[[]]][[[[]]]][][][][[[]][]]")); // true
console.log(is_nested("[[[[[[]]]][][][[[]]][[[[]]]][][][][[[[]]]]]")); // true
console.log(is_nested("[[[[[[]]]][][][[[]]][[[[]]]][][][][[[]][]]")); // true
console.log(is_nested("[[[[[[]]]][][][[[]]][[[[]]]][][][][[[[]]]]]")); // true
console.log(is_nested("[[[[[[]]]][][][[[]]][[[[]]]][][][][[[]][]]")); // true
console.log(is_nested("[[[[[[]]]][][][[[]]][[[[]]]][][][][[[[]]]]]")); // true
console.log(is_nested("[[[[[[]]]][][][[[]]][[[[]]]][][][][[[]][]]")); // true
console.log(is_nested("[[[[[[]]]][][][[[]]][[[[]]]][][][][[[[]]]]]")); // true
console.log(is_nested("[[[[[[]]]][][][[[]]][[[[]]]][][][][[[]][]]")); // true
console.log(is_nested("[[[[[[]]]][][][[[]]][[[[]]]][][][][[[[]]]]]")); // true
console.log(is_nested("[[[[[[]]]][][][[[]]][[[[]]]][][][][[[]][]]")); // true
console.log(is_nested("[[[[[[]]]][][][[[]]][[[[]]]][][][][[[[]]]]]")); // true
console.log(is_nested("[[[[[[]]]][][][[[]]][[[[]]]][][][][[[]][]]")); // true
console.log(is_nested("[[[[[[]]]][][][[[]]][[[[]]]][][][][[[[]]]]]")); // true
console.log(is_nested("[[[[[[]]]][][][[[]]][[[[]]]][][][][[[]][]]")); // true
console.log(is_nested("[[[[[[]]]][][][[[]]][[[[]]]][][][][[[[]]]]]")); // true
console.log(is_nested("[[[[[[]]]][][][[[]]][[[[]]]][][][][[[]][]]")); // true
console.log(is_nested("[[[[[[]]]][][][[[]]][[[[]]]][][][][[[[]]]]]")); // true
console.log(is_nested("[[[[[[]]]][][][[[]]][[[[]]]][][][][[[]][]]")); // true
console.log(is_nested("[[[[[[]]]][][][[[]]][[[[]]]][][][][[[[]]]]]")); // true
console.log(is_nested("[[[[[[]]]][][][[[]]][[[[]]]][][][][[[]][]]")); // true
console.log(is_nested("[[[[[[]]]][][][[[]]][[[[]]]][][][][[[[]]]]]")); // true
console.log(is_nested("[[[[[[]]]][][][[[]]][[[[]]]][][][][[

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Create a function that takes a string as input which contains only square brackets.
//     The function should return true if and only if there is a valid subsequence of brackets
//     where at least one bracket in the subsequence is nested.
//     >>> is_nested("[[]]")
//     true
//     >>> is_nested("[]]]]]]][[[[[]")
//     false
//     >>> is_nested("[][]")
//     false
//     >>> is_nested("[]")
//     false
//     >>> is_nested("[[][]]")
//     true
//     >>> is_nested("[[]][[")
//     true
