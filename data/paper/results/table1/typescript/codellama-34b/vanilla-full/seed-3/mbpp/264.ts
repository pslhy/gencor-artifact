function dog_age(h_age: number): number {
  if(h_age <= 0 || h_age > 17) {
    throw new Error("Invalid Human Age")
  }
  if(h_age <= 1) {
    return h_age * 15
  } else {
    return 15 + (h_age - 2) * 5
  }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to calculate a dog's age in dog's years.
