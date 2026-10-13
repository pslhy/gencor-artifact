function get_total_number_of_sequences(m: number, n: number): number {;
  let sequences: number[][] = Array.from({ length: m + 1 }, () => Array(n + 1).fill(0));

  for (let i = 0; i <= m; i++) {
    for (let length = 1; length <= n; length++) {
      if (length === 1) {
        sequences[i][length] = i;
      } else {
        for (let previous = 1; previous <= i + 1 - Math.pow(2, length - 1); previous++) {
          sequences[i][length] += sequences[previous][length - 1];
        }
      }
    }
  }

  return sequences[m][n];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes in positive integers m and n and finds the number of possible sequences of length n, such that each element is a positive integer and is greater than or equal to twice the previous element but less than or equal to m.
