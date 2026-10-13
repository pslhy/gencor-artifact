function triangle_area(r: number): number | undefined {
  if (r <= 0) {
    return undefined;
  }

  const perimeter = r * 2 * Math.PI;

  for (let k = 1; k < Number.MAX_VALUE; k++) {
    const s = (perimeter * k) / (4 * k * k);
    if (s <= r) {
      break;
    }
    const A = (s * s) / 2;
    if (A > r && A < 2 * r) {
      return A;
    }
  }

  return undefined;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the area of the largest triangle that can be inscribed in a semicircle with a given radius.
