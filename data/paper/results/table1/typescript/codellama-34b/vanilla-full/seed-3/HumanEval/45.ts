function triangle_area(a: number, h: number): number {
  if(a < 0 || h < 0){
    throw new Error('All inputs must be non-negative numbers')
  }
  return (a * h) / 2;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Given length of a side and high return area for a triangle.
//     >>> triangle_area(5, 3)
//     7.5
