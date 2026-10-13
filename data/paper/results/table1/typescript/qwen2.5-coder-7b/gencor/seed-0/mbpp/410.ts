
function min_val(listval: (string | number)[]): number { 
  return listval.reduce((a: number | string, b: string | number) => {
    if (typeof a === 'number' && typeof b === 'number') {
      return a < b ? a : b;
    } else if (typeof a === 'number') {
      return b < a.toString() ? b : a;
    } else if (typeof b === 'number') {
      return a < b.toString() ? a : b;
    } else {
      return a.localeCompare(b) < 0 ? a : b;
    }
  }, Infinity) as number;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the minimum value in a given heterogeneous array.
