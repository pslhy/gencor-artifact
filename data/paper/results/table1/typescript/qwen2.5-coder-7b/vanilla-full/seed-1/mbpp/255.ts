function combinations_colors(l: string[], n: number): string[][] { 
  const result: string[][] = [];
  const helper = (arr: string[], tempArray: string[], startIndex: number) => {
    if (tempArray.length === n) {
      result.push([...tempArray]);
      return;
    }
    for (let i = startIndex; i < arr.length; i++) {
      tempArray.push(arr[i]);
      helper(arr, tempArray, i); // Allow repetition by not incrementing i
      tempArray.pop();
    }
  };
  helper(l, [], 0);
  return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes in an array and length n, and generates all combinations (with repetition) of the elements of the array and returns an array with an array for each combination.
