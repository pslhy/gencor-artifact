function extract_quotation(text1: string): any[] {
  const results = [];
  let text2 = text1;
  while (text2.match("\"")) {
    const start = text2.indexOf("\"");
    const end = text2.indexOf("\"", start + 1);
    results.push(text2.substring(start + 1, end));
    text2 = text2.slice(end + 1);
  }
  return results;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to extract values between quotation marks " " of the given string.
