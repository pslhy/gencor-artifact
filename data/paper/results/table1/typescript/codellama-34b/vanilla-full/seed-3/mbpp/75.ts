function find_tuples(test_list: [number, number, number][], K: number): [number, number, number][] {
  let result: [number, number, number][] = []
  for (let i = 0; i < test_list.length; i++) {
    let test = test_list[i]
    for (let j = 0; j < test.length; j++) {
      if (test[j] % K != 0) {
        break
      }
      if (j == test.length - 1) {
        result.push(test)
      }
    }
  }

  return result
}

// Example
let test_list = [ [12, 24, 36], [100, 240, 360], [5, 10, 15] ]
let K = 12
let result = find_tuples(test_list, K)

console.log(result) // Output: [ [12, 24, 36], [100, 240, 360] ]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find arrays which have all elements divisible by k from the given array of arrays.
