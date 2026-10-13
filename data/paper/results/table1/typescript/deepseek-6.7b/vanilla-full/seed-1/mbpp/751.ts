function check_min_heap(arr: number[]): boolean {
    let length = arr.length;
  
    for (let i = 0; i <= Math.floor(length / 2) - 1; i++) {
      if (arr[i] > arr[2 * i + 1]) {
        return false;
      }
      if (2 * i + 2 < length) {
        if (arr[i] > arr[2 * i + 2]) {
          return false;
        }
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
