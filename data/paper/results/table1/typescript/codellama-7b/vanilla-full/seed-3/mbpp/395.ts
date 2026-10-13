function first_non_repeating_character(str1: string): string | undefined {
  if(str1.lenght === 0){
    return undefined;
  }
  const char_count: { [key: string]: number } = {};
  for(const c of str1){
    if(char_count[c]){
      char_count[c]++;
    } else {
      char_count[c] = 1;
    }
  }
  for(const c of str1){
    if(char_count[c] === 1){
      return c;
    }
  }


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the first non-repeated character in a given string.
