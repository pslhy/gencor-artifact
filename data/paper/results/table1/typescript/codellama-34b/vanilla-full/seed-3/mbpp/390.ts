function add_string(list_: any[], string: string): string[] {
  if(list_.constructor !== Array)
  throw new Error("Invalid input");
  var formatted_list = [];
  for(var i = 0; i < list_.length; i++) {
    formatted_list.push(string.substring(i, i+2));
  }
  return formatted_list;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to apply a given format string to all of the elements in an array.
