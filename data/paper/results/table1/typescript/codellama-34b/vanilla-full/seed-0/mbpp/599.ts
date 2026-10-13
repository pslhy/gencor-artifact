function sum_average(number: number): [number, number] {
  const sum = (number * (number + 1)) / 2;
  const average = sum / number;
  return [sum, average];
}

console.log(sum_average(10)); // [55, 5]
console.log(sum_average(5)); // [15, 3]
console.log(sum_average(20)); // [10, 2]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find sum and average of first n natural numbers.
