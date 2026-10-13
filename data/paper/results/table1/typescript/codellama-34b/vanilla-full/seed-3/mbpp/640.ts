function remove_parenthesis(items: string[]): string {
  if(items.includes('(') || items.includes(')')) {
    let i = items.includes(')') ? items.indexOf(')') : items.length;
    let j = items.includes('(') ? items.indexOf('(') : 0;
    items.splice(j, i);
  }
  return items.join('');
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove the parenthesis and what is inbetween them from a string.
