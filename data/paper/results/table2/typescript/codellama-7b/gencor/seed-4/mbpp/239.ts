
function get_total_number_of_sequences(m: number, n: number): number {
  if (m < 1 || n < 1) {
    throw new Error("Invalid input");
  }
  let count = 0;
  for (let i = 1; i < n; i++) {
    count += get_total_number_of_sequences(m - 2, i);
  }
  return count;
}

function get_total_number_of_sequences(m: number, n: number): number {
  if (m < 1 || n < 1) {
    throw new Error("Invalid input");
  }
  if (n === 1) {
    return 1;
  }
  let count = 0;
  for (let i = 1; i <= m - 2; i++) {
    count += get_total_number_of_sequences(i, n - 1);
  }
  return count;
}

function get_total_number_of_sequences(n: number): number {
  let count = 0;
  for (let i = 1; i <= n - 1; i++) {
    count += get_total_number_of_sequences(i, n - 1);
  }
  return count;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes in positive integers m and n and finds the number of possible sequences of length n, such that each element is a positive integer and is greater than or equal to twice the previous element but less than or equal to m.
