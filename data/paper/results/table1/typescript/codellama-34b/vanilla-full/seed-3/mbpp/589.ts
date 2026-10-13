function perfect_squares(a: number, b: number): number[] {
  if(a < 0 || b < 0){
    return []
  }
  else {
    const result: number[] = []
    for(let i = Math.ceil(Math.sqrt(a)); i ** 2 < b; i++){
      result.push(i ** 2)
    }
    return result
  }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find perfect squares between two given numbers.
