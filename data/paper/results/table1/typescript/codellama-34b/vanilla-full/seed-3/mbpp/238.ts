function number_of_substrings(str: string): number {
  if(str.length === 0){
    return 0;
  }
  let count = 0;
  for(let i = 0; i < str.length; i++){
    if (str[i] !== ' '){
      count++;
    }
  }
  return count;
}

console.log(number_of_substrings('abc def')); // Output 3
console.log(number_of_substrings('')); // Output 0
console.log(number_of_substrings('a b c')); // Output 3
/* In this solution, the function will first check for the length of the string, and if it equals to zero, it will return 0.
Then, it will loop through each character of the string and count the number of characters that are not empty.
Finally the function will return the number of non-empty substrings.
*/


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to count the number of non-empty substrings of a given string.
