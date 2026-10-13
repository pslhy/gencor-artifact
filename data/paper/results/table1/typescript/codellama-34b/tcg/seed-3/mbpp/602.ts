function first_repeated_char(str1: string): string | undefined {
  if(str1.length === 0)
    return undefined;
  for(let i = 0; i < str1.length; i++){
    for(let j = i+1; j < str1.length; j++){
      if(str1.charAt(i) === str1.charAt(j)){
        return str1.charAt(j);
      }
    }
  }
  return undefined;
};


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the first repeated character in a given string.