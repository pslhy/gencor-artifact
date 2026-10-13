function extract_string(str: string[], l: number): string[] {
  if(l < 0 || l > 3){
    throw new Error("Invalid Size");
  }
  const arr: string[] = [];
  for(let i = 0; i < str.length; i+=l){
    arr.push(str[i]);
  }
  return arr;
}

const arr = ["apple", "banana", "cherry", "dates", "eggfruit"];
const result = extract_string(arr, 2);
console.log(result); // Output: ["apple", "banana", "cherry", "dates"]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to extract specified size of strings from a given array of string values.
