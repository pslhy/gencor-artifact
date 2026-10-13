
function parabola_directrix(a: number, b: number, c: number): number {
  if(a === 0) {
    return -1;
  }
  else {
    const directrix: number = -b / (2 * a);
    return directrix;
  }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the directrix of a parabola.
