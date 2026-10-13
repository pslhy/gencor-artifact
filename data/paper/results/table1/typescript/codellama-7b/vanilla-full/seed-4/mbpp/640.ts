function remove_parenthesis(items: string[]): string {
  let result: string = "";

  for (let i: number = 0; i < items.length; i++) {
    if (items[i] === "(" && items[i + 1] === ")") {
      result += " ";
      i += 2;
    } else {
      result += items[i];
    }
  }

  return result.trim();
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove the parenthesis and what is inbetween them from a string.
