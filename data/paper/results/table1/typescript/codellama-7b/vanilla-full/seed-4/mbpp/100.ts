function next_smallest_palindrome(num: number): number {
  let str: string = num.toString();
  let mid: number = Math.floor(str.length / 2);
  let left: number = 0;
  let right: number = str.length - 1;

  // Check if string is already a palindrome
  if (str === str.split("").reverse().join("")) {
    return num + 1;
  }

  // Find the first mismatch
  while (left < mid && right >= mid && str[left] === str[right]) {
    left++;
    right--;
  }

  // If string is already a palindrome, the next smallest palindrome is the number with the mismatch character incremented by 1
  if (left === mid) {
    return parseInt(str[right] + String(parseInt(str[left]) + 1) + str[left - 1]);
  } else {
    // Otherwise, the next smallest palindrome is the number with the mismatch character incremented by 1 and the characters before and after the mismatch character reversed
    let temp: string = "";
    for (let i = left; i <= right; i++) {
      temp += str[i];
    }
    temp = String(parseInt(str[right]) + 1) + temp;
    for (let i = right - 1; i >= left - 1; i--) {
      temp += str[i];
    }
    return parseInt(temp);
  }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the next smallest palindrome of a specified integer, returned as an integer.
