function concatenate_tuple(test_tup: [string, string, number, string]): string {
  let result = "";
  for (let [str1, str2, num, str3] of test_tup) {
    result += str1 + " " + str2 + " " + num + " " + str3;
  }
  return result;
}

const test_tup = ["hello", "world", 1, "!!"];

// Output: "hello world 1 !!"
console.log(concatenate_tuple(test_tup));


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to concatenate each element of array by the delimiter.
