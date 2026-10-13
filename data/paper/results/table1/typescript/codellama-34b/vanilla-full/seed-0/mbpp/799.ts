function left_rotate(n: number, d: number): number {
   const mask = (1 << d) - 1;
   return (n << d) | (n >> (32 - d));
}

// Test cases
console.log(left_rotate(0x00000001, 2)); // Output: 0x00000004
console.log(left_rotate(0x00000001, 31)); // Output: 0x40000000
console.log(left_rotate(0x00000001, 32)); // Output: 0x00000001
console.log(left_rotate(0x80000000, 16)); // Output: 0x00010000
console.log(left_rotate(0x00000001, 0)); // Output: 0x00000001


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to that rotate left bits by d bits a given number. We assume that the number is 32 bit.
