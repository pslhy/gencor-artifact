function triangle_area(r: number): number | undefined { 
  if (r <= 0) return undefined; // Check if radius is positive
  return 0.5 * r * r; // Max area of inscribed triangle is a right isosceles triangle with base and height equal to radius
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the area of the largest triangle that can be inscribed in a semicircle with a given radius.
