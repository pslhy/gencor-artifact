function min_k(test_list: [string, number][], K: number): [string, number][] {
  if(test_list.length < K) {
    console.log("Invalid argument: test_list length should be at least K.");
    return [];
  }
  if(K < 0) {
    console.log("Invalid argument: k should be non-negative.");
    return [];
  }

  // Sort test_list in descending order based on the second element of each pair.
  test_list.sort(function(a, b) {
    return b[1] - a[1];
  });

  // Return the first K records from test_list.
  return test_list.slice(0, K);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find minimum k records from array array. https://www.geeksforgeeks.org/tsthon-find-minimum-k-records-from-array-array/ - in this case a verbatim cots of test cases
