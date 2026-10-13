function median_numbers(a: number, b: number, c: number): number {
  const arr: number[] = [a, b, c];
  arr.sort((a: number, b: number) => a - b);

  if (arr.length % 2 === 0) {
    const mid_index: number = Math.floor(arr.length / 2) - 1;
    return (arr[mid_index] + arr[mid_index + 1]) / 2;
  } else {
    const mid_index: number = Math.floor(arr.length / 2);
    return arr[mid_index];
  }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the median of three numbers.
