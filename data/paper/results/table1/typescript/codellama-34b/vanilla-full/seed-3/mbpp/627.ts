function find_First_Missing(array: number[]): number {
  if(array.length == 0){
    throw new Error("No missing number found in sorted array");
  }
  let i = 0;
  let previous = array[0];
  let current = array[0];

  while(i < array.length){
    previous = current;
    current = array[i];
    if(previous == current){
      break;
    }
    i++;
  }

  return i;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the smallest missing number from a sorted array of natural numbers.
