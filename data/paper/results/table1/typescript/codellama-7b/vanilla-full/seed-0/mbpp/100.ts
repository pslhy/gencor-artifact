function next_smallest_palindrome(num: number): number {
  const str = num.toString();
  let result = num + 1;
  
  while (!is_palindrome(result.toString())) {
    result += 1;
  }
  
  return result;
}

function is_palindrome(str: string): boolean {
  return str.split('').reverse().join('') === str;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the next smallest palindrome of a specified integer, returned as an integer.
