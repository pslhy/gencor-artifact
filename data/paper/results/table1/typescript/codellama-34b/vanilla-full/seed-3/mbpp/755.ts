function second_smallest(numbers: (number | number)[]): number | undefined {
  if(numbers.length <= 1){
    return undefined;
  }
  let sorted_numbers = numbers.sort(function(a,b){
    return a-b;
  })
  return sorted_numbers[1];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the second smallest number in an array.
