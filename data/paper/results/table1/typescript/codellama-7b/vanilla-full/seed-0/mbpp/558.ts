function digit_distance_nums(n1: number, n2: number): number {
  const digits1 = String(n1).split("");
  const digits2 = String(n2).split("");
  let sum = 0;

  for (let i = 0; i < digits1.length; i++) {
    const diff = +digits1[i] - +digits2[i];
    sum += diff >= 0 ? diff : -diff;
  }

  return sum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the sum of the per-digit difference between two integers.
