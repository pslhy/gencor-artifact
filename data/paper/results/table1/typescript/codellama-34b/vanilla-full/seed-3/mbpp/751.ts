function check_min_heap(arr: number[]): boolean {
  if(arr.length <= 1){
    return true;
  }
  for(let i = 1; i < arr.length; i++) {
    let parent = arr[Math.floor((i - 1) / 2)];
    if(arr[i] < parent){
      return false;
    }
  }
  return true;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check if the given array represents min heap or not. https://www.geeksforgeeks.org/how-to-check-if-a-given-array-represents-a-binary-heap/
