function is_majority(arr: number[], n: number, x: number): boolean {
  let left: number = 0;
  let right: number = n - 1;
  let mid: number = Math.floor((left + right) / 2);
  while (left < right) {
    if (arr[mid] == x) {
      left = mid;
      right = mid;
      mid = Math.floor((left + right) / 2);
    } else {
      if (arr[left] == x) {
        left++;
      } else {
        right--;
      }
      mid = Math.floor((left + right) / 2);
    }
  }
  return arr[left] == x ? true : false;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes in a sorted array, its length (n), and an element and returns whether the element is the majority element in the given sorted array. (The majority element is the element that occurs more than n/2 times.)
