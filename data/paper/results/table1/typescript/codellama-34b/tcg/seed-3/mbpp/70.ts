function get_equal(Input: number[][]): boolean {
  if(Input.length <= 1){
    return true;
  }
  const length = Input[0].length;
  for(let i = 1; i < Input.length; i++){
    if(length !== Input[i].length){
      return false;
    }
  }
  return true;
}

/* Explanation:
We can use an if statement to handle the case where the input array has only one element or is empty. If the length of the input array is less than 
1, we return true because the arrays are equal in length.
We also save the length of the first array for the comparison
In the for loop, we check if all arrays have the same length as the first array if the first array. If this is the case, we return true, 
otherwise we return false.
*/


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find whether all the given arrays have equal length or not.