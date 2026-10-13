function parabola_directrix(a: number, b: number, c: number): number {
  const p = b**2 - 4*a*c;
  if (p > 0) {
    const d = (2*b) / p;
    if (d > 0) {
      return d;
    }
    else {
      return -d;
    }
  }
  else {
    return 0;
  }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the directrix of a parabola.
