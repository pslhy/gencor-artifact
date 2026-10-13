function extract_quotation(text1: string): any[] {
  let quote1 = 0;
  let quote2 = 0;
  let i = 0;
  const values: any[] = [];
  while (i < text1.length) {
    if (text1[i] === '"') {
      if (quote1 === 0) {
        quote1 = i;
      } else {
        quote2 = i;
        values.push(text1.substring(quote1 + 1, quote2));
        quote1 = 0;
        quote2 = 0;
      }
    }
    i++;
  }
  return values;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to extract values between quotation marks " " of the given string.
