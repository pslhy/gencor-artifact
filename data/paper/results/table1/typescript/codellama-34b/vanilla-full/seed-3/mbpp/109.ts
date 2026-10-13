function odd_Equivalent(s: string, n: number): number {
  if(s.length == n)
  return 0
  for (let i = s.length-n; i< s.length; i++)
  if(s[i] == "1")
   return 1
   
  return 0
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the number of numbers with an odd value when rotating a binary string the given number of times.
