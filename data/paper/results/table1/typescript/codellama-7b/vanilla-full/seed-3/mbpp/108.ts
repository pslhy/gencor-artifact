function merge_sorted_list(num1: number[], num2: number[], num3: number[]): number[] {
  let result: number[] = [];

  while (num1.length && num2.length && num3.length) {
    if (num1[0] < num2[0]) {
      result.push(num1.shift() as number);
    } else if (num1[0] > num3[0]) {
      result.push(num3.shift() as number);
    } else {
      result.push(num2.shift() as number);
    }
  }

  num1.forEach(x => result.push(x as number));
  num2.forEach(x => result.push(x as number));
  num3.forEach(x => result.push(x as number));

  return result.sort((a, b) => a - b);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to merge three arrays into a single sorted array.
