
function next_power_of_2(n: number): number {
  if(n <= 0) {
    return 1;
  }
  n--;
  n = n + (n % 2);
  n = n + (n % 4);
  n = n + (n % 8);
  n = n + (n % 16);
  n = n + (n % 32);
  n = n + (n % 64);
  n = n + (n % 128);
  n = n + (n % 256);
  return n + 1;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the smallest power of 2 greater than or equal to n.
