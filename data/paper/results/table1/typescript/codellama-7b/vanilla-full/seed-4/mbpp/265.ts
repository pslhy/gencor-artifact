function list_split(S: any[], step: number): any[][] {
  if (step <= 0) {
    throw new Error("`step` should be a positive integer.");
  }
  return S.reduce((acc, _, i) => {
    if (i % step === 0) {
      acc.push([]);
    }
    acc[Math.floor(i / step)].push(S[i]);
    return acc;
  }, [] as any[][]);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes in an array and an integer n and splits an array for every nth element, returning an array of the resulting arrays.
