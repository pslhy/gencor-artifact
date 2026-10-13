function check_integer(text: string): boolean {
  if(text.includes(".") || text.includes("e") || text.includes("E")) {
    return false;
  }
  const parsed = parseInt(text);
  if(isNaN(parsed)) {
    return false;
  }
  return text == parsed.toString();
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check if a string represents an integer or not.
