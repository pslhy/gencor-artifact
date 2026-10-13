function triangle_area(r: number): number | undefined {
  if (r < 0) {
    return undefined;
  }
  const a = (Math.PI * r * r) / 2;
  const b = Math.sqrt((3 * Math.pow(r, 2)) / 2);
  const c = (-1 * Math.pow(b, 2)) + Math.pow(a, 2);
  return Math.sqrt(c) * b;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the area of the largest triangle that can be inscribed in a semicircle with a given radius.
