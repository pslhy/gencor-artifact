
function extract_quotation(text1: string): any[] {
  const text2: any[] = text1.split("");
  const final: any[] = [];
  for (let i = 0; i < text2.length; i++) {
    if (text2[i] == '"') {
      const quote = i;
      while (i < text2.length && text2[i + 1] != '"') {
        i++;
      }
      const str = text2.slice(quote, i + 1);
      final.push(str);
    }
  }
  return final;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to extract values between quotation marks " " of the given string.
