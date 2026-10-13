function checks(n: number): boolean {
  if(n < 0){
      return false;
  }
  const str = n.toString();
  const reverse = parseInt(str.split("").reverse().join(""));
  if(n - reverse === 1){
      return true;
  }
  return false;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to check if a given number is one less than twice its reverse.
