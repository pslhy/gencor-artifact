function merge_sorted_list(num1: number[], num2: number[], num3: number[]): number[] {
  const result = [];
  let pointer1 = 0;
  let pointer2 = 0;
  let pointer3 = 0;
 
  while (pointer1 < num1.length && pointer2 < num2.length && pointer3 < num3.length) {
    if (num1[pointer1] > num2[pointer2]) {
      if (result.length === 0 || result[result.length - 1] < num3[pointer3]) {
        result.push(num3[pointer3]);
        pointer3++;
      } else {
        result.push(num2[pointer2]);
        pointer2++;
      }
    } else if (num2[pointer2] > num3[pointer3]) {
      if (result.length === 0 || result[result.length - 1] < num1[pointer1]) {
        result.push(num1[pointer1]);
        pointer1++;
      } else {
        result.push(num3[pointer3]);
        pointer3++;
      }
    } else if (num1[pointer1] === num2[pointer2]) {
      result.push(num1[pointer1]);
      result.push(num2[pointer2]);
      pointer1++;
      pointer2++;
    }
  }
 
  while (pointer1 < num1.length) {
    result.push(num1[pointer1]);
    pointer1++;
  }
 
  while (pointer2 < num2.length) {
    result.push(num2[pointer2]);
    pointer2++;
  }
 
  while (pointer3 < num3.length) {
    result.push(num3[pointer3]);
    pointer3++;
  }
 
  return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to merge three arrays into a single sorted array.
