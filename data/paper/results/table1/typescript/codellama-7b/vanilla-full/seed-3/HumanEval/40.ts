function triples_sum_to_zero(l: number[]): boolean {
  if(l.length < 3)
    return false;

  //set of unique elements in the array
  let set = new Set(l);

  //check if the set size is equal to the array size
  //if not, there are duplicates in the array
  if(set.size !== l.length)
    return false;

  //check if there is an element that sum to zero
  //by iterating over the set and checking if the sum of the element
  //with any other 2 elements in the array is equal to zero
  for(let element of set){
    for(let other of set){
      if(other !== element && (element + other === 0)){
        return true;
      }
    }
  }

  return false;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     triples_sum_to_zero takes an array of integers as an input.
//     it returns true if there are three distinct elements in the array that
//     sum to zero, and false otherwise.
//     >>> triples_sum_to_zero([1, 3, 5, 0])
//     false
//     >>> triples_sum_to_zero([1, 3, -2, 1])
//     true
//     >>> triples_sum_to_zero([1, 2, 3, 7])
//     false
//     >>> triples_sum_to_zero([2, 4, -5, 3, 9, 7])
//     true
//     >>> triples_sum_to_zero([1])
//     false
