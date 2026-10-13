function find_tuples(test_list: [number, number, number][], K: number): [number, number, number][] {
  let result: [number, number, number][] = []
  for (let i = 0; i < test_list.length; i++) {
    let test = test_list[i]
    for (let j = 0; j < test_list.length; j++) {
      if (j !== i) {
        if (test[0] % K === 0 && test[1] % K === 0 && test[2] % K === 0) {
          result.push(test)
        }
      }
    }
  }
  return result
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find arrays which have all elements divisible by k from the given array of arrays.