
function surfacearea_cube(l: number): number {
  const area = 6 * l ** 2;
  const volume = l ** 3;

  return area + volume;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the surface area of a cube of a given size.
