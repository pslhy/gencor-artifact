function get_ludic(n: number): number[] {
  if(n < 1) {
    return [];
  }
  const ludic: number[] = [1];
  let i = 2;
  while(i <= n) {
    if (ludic[i - 1] * 2 <= n) {
      ludic.push(ludic[i - 1] * 2);
    }
    if (ludic[i - 1] * 3 <= n) {
      ludic.push(ludic[i - 1] * 3);
    }
    if (ludic[i - 1] * 5 <= n) {
      ludic.push(ludic[i - 1] * 5);
    }
    i++;
  }
  return ludic;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to get all lucid numbers smaller than or equal to a given integer.
