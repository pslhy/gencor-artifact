function remove_Occ(s: string, ch: string): string {
  if(s.indexOf(ch) === 0){
    s = s.substr(1);
  }
  if(s.lastIndexOf(ch) === s.length -1){
    s = s.slice(0, -1);
  }
  return s;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to remove first and last occurrence of a given character from the string.
