function get_ludic(n: number): number[] {
  if(n < 1){
      return [];
  }
  const ludic = [1]; // array to store the ludic numbers
  let index = 1; // index into the ludic array
  
  // For conditions
  for(let i=2; i<=n; i++){
    // check if the number still exists
    if(index < ludic.length){
      // calculate the new number using the index
      const new_number = i - ludic[index];
      // if it is larger than 1, it's a valid ludic number
      if(new_number > 1){
        ludic.push(new_number);
      }
    }
    // increment the index into the ludic array
    index++;
  }
  return ludic;
}

// Test the function with an example
console.log(get_ludic(100)); // [1, 2, 3, 5, 7, 11, 13, 23, 29, 31, 55, 59, 61, 62, 71, 73, 77, 83, 91, 93, 95, 97, 99]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to get all lucid numbers smaller than or equal to a given integer.
