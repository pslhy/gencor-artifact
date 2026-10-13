function find_Index(n: number): number {
  let smallestTriangleNumber = 1;
  let index = 1;
  while (smallestTriangleNumber.toString().length !== n) {
    smallestTriangleNumber += index;
    index += 1;
  }
  return smallestTriangleNumber;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the index of smallest triangular number with n digits. https://www.geeksforgeeks.org/index-of-smallest-triangular-number-with-n-digits/
