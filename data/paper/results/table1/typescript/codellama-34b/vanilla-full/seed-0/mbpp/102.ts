function snake_to_camel(word: string): string {
  const words = word.split('_');
  let camel = words[0].toLowerCase();
  if (words.length > 1) {
    for (let i = 1; i < words.length; i++) {
      camel += words[i].charAt(0).toUpperCase() + words[i].substring(1).toLowerCase();
    }
  }
  return camel;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to convert a snake case string to camel case string.
