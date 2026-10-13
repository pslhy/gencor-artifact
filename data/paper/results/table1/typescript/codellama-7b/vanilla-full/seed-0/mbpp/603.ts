function get_ludic(n: number): number[] {
  const ludic: number[] = [2, 3];
  for (let i = 4; i <= n; i++) {
    let j = 0;
    while (ludic[j] < i) j++;
    if (ludic[j] === i) ludic.push(i);
  }
  return ludic;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to get all lucid numbers smaller than or equal to a given integer.
