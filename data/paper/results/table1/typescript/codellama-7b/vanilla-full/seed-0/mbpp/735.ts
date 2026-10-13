function toggle_middle_bits(n: number): number {
  const first_bit_mask = ~(1 << 0);
  const last_bit_mask = ~(1 << (n - 1));
  return n ^ first_bit_mask ^ last_bit_mask;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to toggle bits of the number except the first and the last bit. https://www.geeksforgeeks.org/toggle-bits-number-expect-first-last-bits/
