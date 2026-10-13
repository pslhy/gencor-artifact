function insert_element(list: string[], element: string): string[] {
  if(list.includes(element)){
  const index = list.indexOf(element);
  return [list.slice(0,index),element,list.slice(index+1)].flat();
} else {
  return [...list,element];
}
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes in an array and an element and inserts the element before each element in the array, and returns the resulting array.
