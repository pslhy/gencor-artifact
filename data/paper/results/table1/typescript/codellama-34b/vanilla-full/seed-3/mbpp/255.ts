function combinations_colors(l: string[], n: number): string[][] {
  if(l.length == n)
  return Array(1 << n, i => i.toString(2).padStart(n, '0'));
else {
  combinations = [];
  combinations_colors(l, n + 1).forEach(c => {
   combinations.push(c);
   combinations.push([l[n], ...c]);
  });
  return combinations;
}
 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes in an array and length n, and generates all combinations (with repetition) of the elements of the array and returns an array with an array for each combination.
