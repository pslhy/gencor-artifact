function next_smallest_palindrome(num: number): number {
  let str = num.toString();
  let is_palindrome = true;
  for (let i = 0; i < str.length / 2; i++) {
    if (str[i] !== str[str.length - i - 1]) {
      is_palindrome = false;
      break;
    }
  }
  if (is_palindrome) {
    return num;
  }
  str += str[0];
  return parseInt(str);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the next smallest palindrome of a specified integer, returned as an integer.
