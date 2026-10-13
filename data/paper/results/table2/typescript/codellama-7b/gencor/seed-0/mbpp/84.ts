
function sequence(n: number): number {
  const state = [0, 1];
  while (state.length < n) {
    const next = state.length === 1 ? 1 : state[state.length - 2] + state[state.length - 1];
    state.push(next);
  }
  return state[n];
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the nth number in the newman conway sequence.
