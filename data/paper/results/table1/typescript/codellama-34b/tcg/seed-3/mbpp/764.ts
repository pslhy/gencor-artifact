function number_ctr(str: string): number {
  if(str.length === 0){
    return 0;
  } else {
    str += "a";
    return 1 + number_ctr(str.slice(1));
  }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to count number of digits in a given string.