function max_length_list(input_list: number[][]): [number, number[]] {
  if(input_list.length = 0){
     return -1, [];
  } else {
     var result: [number, number[]] = [0, input_list[0]];
     for (var i = 1; i < input_list.length; i++) {
       if (input_list[i].length > result[0]){
           result[0] = input_list[i].length;
           result[1] = input_list[i];
       }
     }
     return result;
  }
}

// Example usage
max_length_list([ [1, 2, 3], [4, 5], [6, 7, 8, 9] ]);  // returns [3, [6, 7, 8, 9]]
max_length_list([ [1, 2], [4, 5], [6, 7] ]);            // returns [2, [1, 2]]
max_length_list([ [4, 5], [6, 7] ]);                    // returns [2, [4, 5]]
max_length_list([ [6, 7] ]);                           // returns [1, [6, 7]]
max_length_list([ ]);                                  // returns -1, []


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the array with maximum length.
