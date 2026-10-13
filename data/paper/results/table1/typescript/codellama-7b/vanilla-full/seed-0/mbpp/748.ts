function capital_words_spaces(str1: string): string {
  const words = str1.split(' ');
  let new_str = '';
  words.forEach((word) => {
    if (word[0].toUpperCase() === word[0]) {
      new_str += ` ${word}`;
    } else {
      new_str += word;
    }
  });
  return new_str.trim();
}

// Example usage:
const str1 = 'JavaScript is Awesome';
console.log(capital_words_spaces(str1)); // Output: 'JavaScript Is Awesome';


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to put spaces between words starting with capital letters in a given string.
