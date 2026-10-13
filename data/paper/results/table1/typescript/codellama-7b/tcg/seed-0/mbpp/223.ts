function is_majority(arr: number[], n: number, x: number): boolean {
  const left = Array.from({length: n}, (_, i) => arr[i]).filter(a => a < x).length;
  const right = Array.from({length: n}, (_, i) => arr[i]).filter(a => a > x).length;
  return left === n / 2 && right === n / 2;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes in a sorted array, its length (n), and an element and returns whether the element is the majority element in the given sorted array. (The majority element is the element that occurs more than n/2 times.)