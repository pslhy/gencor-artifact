function extract_quotation(text1: string): any[] {
  const text2: any[] = text1.split("");
  const final: any[] = [];
  for (let i = 0; i < text2.length; i++) {
    if (text2[i] == '"') {
      const quote = [];
      for (let j = i + 1; j < text2.length; j++) {
        if (text2[j] == '"') {
          break;
        }
        quote.push(text2[j]);
      }
      i = j;
      final.push(quote.join(""));
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
