function next_smallest_palindrome(num: number): number {
  const numStr = num.toString();
  const mid = Math.floor(numStr.length / 2);
  for (let i = mid; i >= 0; i--) {
    const left = numStr.substring(0, i);
    const right = numStr.substring(i, numStr.length);
    const reversedRight = right.split("").reverse().join("");
    if (left === reversedRight) {
      const nextPalindrome = numStr.substring(0, i) + (parseInt(reversedRight) + 1).toString() + numStr.substring(i, numStr.length);
      return parseInt(nextPalindrome);
    }
  }
  return num;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the next smallest palindrome of a specified integer, returned as an integer.
