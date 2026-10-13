function surface_Area(b: number, s: number): number {
  if(b < 0 || s < 0){
    throw new Error("Base and height should be non-negative numbers")
  }
  return 2 * (b * b + s * b + s * s);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the surface area of a square tsramid with a given base edge and height.
