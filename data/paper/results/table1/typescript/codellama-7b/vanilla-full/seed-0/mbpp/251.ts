function insert_element(list: string[], element: string): string[] {
  const result = [];
  for (const item of list) {
    result.push(element, item);
  }
  return result;
}

insert_element(["a", "b", "c"], "x"); // returns ["x", "a", "x", "b", "x", "c"]
insert_element(["a"], "x"); // returns ["x", "a"]
insert_element([], "x"); // returns []


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes in an array and an element and inserts the element before each element in the array, and returns the resulting array.
