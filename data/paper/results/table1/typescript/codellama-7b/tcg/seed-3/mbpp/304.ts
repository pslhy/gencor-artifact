function find_Element(arr: number[], ranges: number[][], rotations: number, index: number): number {
  if(ranges.length === 0 || ranges[0].length !== 2) {
    throw new Error("Invalid ranges");
  }
  if(rotations < 0 || rotations > ranges[0][1]) {
    throw new Error("Invalid rotations");
  }
  if(index < 0 || index >= arr.length) {
    throw new Error("Invalid index");
  }
  
  let startIndex: number = rotations % arr.length;
  for (let i = 0; i < rotations; i++) {
    startIndex = (startIndex + 1) % arr.length;
  }
  
  let element: number = arr[startIndex];
  if(element === undefined) {
    throw new Error("Element not found");
  }
  return element;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find element at a given index after number of rotations.