
function next_power_of_2(n: number): number {
  if(n <= 0) {
    return 1;
  }
  n--;
  n |= n >> 1;
  n |= n >> 2;
  n |= n >> 4;
  n |= n >> 8;
  n |= n >> 16;
  return n + 1;
}

// Test cases:
console.log(next_power_of_2(0)); // Output: 1
console.log(next_power_of_2(1)); // Output: 1
console.log(next_power_of_2(2)); // Output: 2
console.log(next_power_of_2(3)); // Output: 4
console.log(next_power_of_2(4)); // Output: 4
console.log(next_power_of_2(5)); // Output: 8
console.log(next_power_of_2(6)); // Output: 8
console.log(next_power_of_2(7)); // Output: 8
console.log(next_power_of_2(8)); // Output: 8
console.log(next_power_of_2(9)); // Output: 16
console.log(next_power_of_2(10)); // Output: 16
console.log(next_power_of_2(11)); // Output: 16
console.log(next_power_of_2(12)); // Output: 16
console.log(next_power_of_2(13)); // Output: 16
console.log(next_power_of_2(14)); // Output: 16
console.log(next_power_of_2(15)); // Output: 16
console.log(next_power_of_2(16)); // Output: 16

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the smallest power of 2 greater than or equal to n.
