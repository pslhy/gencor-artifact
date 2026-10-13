function is_nested(string: string): boolean {
  if(string.length <= 1){
    return false;
  }
  let isNested = false;
  let openBrackets = 0;
  for(let i = 0; i < string.length && !isNested; i++){
    if(string[i] === '['){
      openBrackets++;
    } else if(string[i] === ']'){
      openBrackets--;
    }
    if(openBrackets > 0){
      isNested = true;
    }
  }
  return isNested;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Create a function that takes a string as input which contains only square brackets.
//     The function should return true if and only if there is a valid subsequence of brackets
//     where at least one bracket in the subsequence is nested.
//     >>> is_nested("[[]]")
//     true
//     >>> is_nested("[]]]]]]][[[[[]")
//     false
//     >>> is_nested("[][]")
//     false
//     >>> is_nested("[]")
//     false
//     >>> is_nested("[[][]]")
//     true
//     >>> is_nested("[[]][[")
//     true