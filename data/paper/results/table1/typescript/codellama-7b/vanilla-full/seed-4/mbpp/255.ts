function combinations_colors(l: string[], n: number): string[][] {
  if (n == 1) {
    return l.map(x => [x]);
  }
  return l.flatMap(x =>
    combinations_colors(l, n - 1).map(y => [x].concat(y)));
}

console.log(combinations_colors(["red", "green", "blue"], 3));
// Output: [ ["red", "red", "red"], ["red", "red", "green"], ["red", "red", "blue"], ["red", "green", "red"], ["red", "green", "green"], ["red", "green", "blue"], ["red", "blue", "red"], ["red", "blue", "green"], ["red", "blue", "blue"], ["green", "red", "red"], ["green", "red", "green"], ["green", "red", "blue"], ["green", "green", "red"], ["green", "green", "green"], ["green", "green", "blue"], ["green", "blue", "red"], ["green", "blue", "green"], ["green", "blue", "blue"], ["blue", "red", "red"], ["blue", "red", "green"], ["blue", "red", "blue"], ["blue", "green", "red"], ["blue", "green", "green"], ["blue", "green", "blue"], ["blue", "blue", "red"], ["blue", "blue", "green"], ["blue", "blue", "blue"] ]

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes in an array and length n, and generates all combinations (with repetition) of the elements of the array and returns an array with an array for each combination.
