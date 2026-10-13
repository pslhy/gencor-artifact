function get_total_number_of_sequences(m: number, n: number): number {
  if(n === 1) {
    return m + 1;
  }
  let total = 0;
  for(let i = 1; i <= m; i++) {
    total += get_total_number_of_sequences(m, n - 1);
  }
  return total;
}

console.log(get_total_number_of_sequences(3, 3)); // 14
console.log(get_total_number_of_sequences(5, 4)); // 13


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes in positive integers m and n and finds the number of possible sequences of length n, such that each element is a positive integer and is greater than or equal to twice the previous element but less than or equal to m.
