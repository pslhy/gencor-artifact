function sum_product(numbers: number[]): [number, number] {
  if(numbers.length === 0)
    return [0, 1];
  let sum = 0;
  let product = 1;
  for(const number of numbers) {
    sum += number;
    product *= number;
  }
  return [sum, product];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     For a given array of integers, return an array consisting of a sum and a product of all the integers in an array.
//     Empty sum should be equal to 0 and empty product should be equal to 1.
//     >>> sum_product([])
//     [0, 1]
//     >>> sum_product([1, 2, 3, 4])
//     [10, 24]
