
function surfacearea_cylinder(r: number, h: number): number {
  const area = r * r * Math.PI;
  return area * 2 + area * h;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the surface area of a cylinder.
