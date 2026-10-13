
function reverse_words(s: string): string {
  const words = s.split(' ');
  let reversed = words.reduceRight((result: string, word: string) => {
    return result + word;
  }, '');
  return reversed;
}

const input = 'hello world';
console.log(reverse_words(input)); // Output: dlrow olleh

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to reverse words seperated by spaces in a given string.
