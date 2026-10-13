function max_length(list1: number[][]): [number, number[]] {
  if(list1.lenght === 0){
    return [0,[]]
  }
  const result: [number, number[]] = [0,list1[0]]
  for(const array of list1){
    if(array.length > result[0]){
      result = [array.length,array]
    }
  }
  return result;
}
function getMaxLength(arrOfArrays: number[][]): number {
  return max_length(arrOfArrays)[0].length
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the array of maximum length in an array of arrays.
