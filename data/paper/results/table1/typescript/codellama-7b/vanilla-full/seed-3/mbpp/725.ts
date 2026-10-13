function extract_quotation(text1: string): any[] {
  let quote_list: any[] = [];
  while (text1.includes('"')) {
    let position: number = text1.indexOf('"');
    quote_list.push(text1.substring(position + 1, text1.indexOf('"', position + 1)));
    text1 = text1.substring(position + 2);
  }
  return quote_list;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to extract values between quotation marks " " of the given string.
