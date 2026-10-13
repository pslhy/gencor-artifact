function remove_nested(test_tup: any): [number, number, number, number] { 
  return test_tup as [number, number, number, number]; 
} 

// Test the function
let tup = [2, 4, [3, 6, 5], 3, 5]; 
let res_tup = remove_nested(tup); 
for(let num of res_tup as [number, number, number, number]  [ 
  
  
  ]
  ) { 
  num = num; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove arrays from the given array.