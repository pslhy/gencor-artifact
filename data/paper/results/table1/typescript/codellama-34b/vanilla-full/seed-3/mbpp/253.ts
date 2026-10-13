function count_integer(list1: (number | string | number)[]): number {
  let count = 0;
  list1.forEach(x => {
    if (typeof x === "number") {
      count++;
    }
  });
  return count;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function that returns the number of integer elements in a given array.
