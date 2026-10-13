function next_smallest_palindrome(num: number): number {
  if(num < 0){
      return -1;
  }
  let num_arr = num.toString().split("");
  let mid = Math.floor(num_arr.length / 2);
  for(let i = mid; i > 0; i--){
      if(num_arr[i] > num_arr[i - 1]){
          num_arr[i] = num_arr[i - 1];
          for(let j = i + 1; j < num_arr.length; j++){
              num_arr[j] = num_arr[i];
          }
      }
  }
  return parseInt(num_arr.join(""));
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the next smallest palindrome of a specified integer, returned as an integer.
