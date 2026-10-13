function get_total_number_of_sequences(m: number, n: number): number {
  if (m < 1 || n < 1) {
    throw new Error("Invalid input");
  }
  let count = 0;
  for (let i = 1; i < n; i++) {
    count += get_number_of_possible_sequences(m, n, i);
  }
  return count;
}

function get_number_of_possible_sequences(m: number, n: number, current_value: number): number {
  if (m < current_value || n < current_value) {
    throw new Error("Invalid input");
  }
  if (current_value == m) {
    // We have reached the maximum value, so there is only one sequence left
    return 1;
  }
  // Calculate the number of possible sequences recursively
  return get_number_of_possible_sequences(m, n, current_value + 1)
    + get_number_of_possible_sequences(m, n, current_value + 1);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes in positive integers m and n and finds the number of possible sequences of length n, such that each element is a positive integer and is greater than or equal to twice the previous element but less than or equal to m.
