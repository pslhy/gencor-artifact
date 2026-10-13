function second_smallest(numbers: (number | number)[]): number | undefined {
  if (numbers.length < 2) {
      return undefined;
  }
  let first_min = Infinity;
  let second_min = Infinity; 

  for (let i = 0; i < numbers.length; i++) {
      if (numbers[i] < first_min) {
          second_min = first_min; // second_min now holds the smallest found so far
          first_min = numbers[i]; // found a new smallest number
      } else if (numbers[i] < second_min && numbers[i] !== first_min) {
          second_min = numbers[i]; // found a new second smallest number 
      }
  }
 
  if (second_min === Infinity) {
      return undefined; // this means that there was only one unique number in the input
  }
  return second_min;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the second smallest number in an array.
