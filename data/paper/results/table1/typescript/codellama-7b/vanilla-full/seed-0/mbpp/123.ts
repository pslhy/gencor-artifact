function amicable_numbers_sum(limit: number): number {
  const d = Array(limit).fill(0);
  d.forEach((_, i) => (d[i] = i));
  const s = d
    .filter((v) => (v !== 0) && (v === (d[v] + d[d[v]]) / 2))
    .reduce((s, v) => s + v, 0);
  return s;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sum all amicable numbers from 1 to a specified number.
