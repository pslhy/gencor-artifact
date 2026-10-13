
function lateralsurface_cone(r: number, h: number): number {
  if(r < 0 || h < 0){
    throw new Error("Radius and height should be non-negative numbers")
  }
  return Math.PI*r*h;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the lateral surface area of a cone given radius r and the height h.
