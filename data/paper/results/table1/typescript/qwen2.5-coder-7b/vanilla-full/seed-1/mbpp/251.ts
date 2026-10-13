function insert_element(list: string[], element: string): string[] { 
  return list.flatMap(item => [element, item]); 
}

const array = ['hello', 'world', 'typescript'];
const elem = '!';
const output = insert_element(array, elem);
console.log(output); // Output: [ '!', 'hello', '!', 'world', '!', 'typescript' ]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes in an array and an element and inserts the element before each element in the array, and returns the resulting array.
