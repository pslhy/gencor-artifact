function max_sum_list(lists: number[][]): number[] {
  if(lists.length == 0){
    throw new Error("No list provided");
  }
  let maxSum: number = 0;
  let maxArray: number[] = [];
  for(const array of lists){
    let sum: number = 0;
    for(const num of array){
      sum += num;
    }
    if(sum > maxSum){
      maxSum = sum;
      maxArray = array;
    }
  }
  return maxArray;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that returns the array in an array of arrays whose sum of elements is the highest.
