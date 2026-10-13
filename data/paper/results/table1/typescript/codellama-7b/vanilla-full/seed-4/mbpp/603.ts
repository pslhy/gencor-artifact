function get_ludic(n: number): number[] {
  const ludic: number[] = [];
  for (let i = 1; i <= n; i++) {
    if (ludic[i] === undefined) {
      ludic[i] = i;
    }
    for (let j = i + 1; j <= n; j++) {
      if (ludic[j] === undefined) {
        ludic[j] = ludic[j - i] * (j - i);
      }
      if (ludic[j] >= n) {
        break;
      }
    }
  }
  return ludic;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to get all lucid numbers smaller than or equal to a given integer.
