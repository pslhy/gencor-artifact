function next_Perfect_Square(N: number): number {
   if (N == 1)
      return 4
    let i = 1
    while (i <= N)
      {
        if ((i**2) > newNumber(N))
           return (i*i)
        i ++
       } 
   return null


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the next perfect square greater than a given number.