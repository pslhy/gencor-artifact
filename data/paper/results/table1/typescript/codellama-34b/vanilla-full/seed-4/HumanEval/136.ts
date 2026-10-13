function largest_smallest_integers(lst: number[]): [number | undefined, number | undefined] {
  let largest: number | undefined
  let smallest: number | undefined

  for (const num of lst) {
    if (num > 0 && (smallest === undefined || num < smallest)) {
      smallest = num
    }
    if (num < 0 && (largest === undefined || num > largest)) {
      largest = num
    }
  }

  return [largest, smallest]
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Create a function that returns an array (a, b), where 'a' is
//     the largest of negative integers, and 'b' is the smallest
//     of positive integers in an array.
//     If there is no negative or positive integers, return them as undefined.
//     Examples:
//     >>> largest_smallest_integers([2, 4, 1, 3, 5, 7])
//     [undefined, 1]
//     >>> largest_smallest_integers([])
//     [undefined, undefined]
//     >>> largest_smallest_integers([0])
//     [undefined, undefined]
