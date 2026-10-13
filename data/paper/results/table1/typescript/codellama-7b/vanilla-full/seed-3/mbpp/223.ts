function is_majority(arr: number[], n: number, x: number): boolean {
  let left = 0;
  let right = n - 1;
  while (left <= right) {
    let mid = (left + right) >> 1;
    if (arr[mid] == x) {
      let cnt = 1;
      while (mid - 1 >= 0 && arr[mid - 1] == x) {
        mid--;
        cnt++;
      }
      while (mid + 1 <= n - 1 && arr[mid + 1] == x) {
        mid++;
        cnt++;
      }
      return cnt > n >> 1;
    } else if (arr[mid] < x) {
      left = mid + 1;
    } else {
      right = mid - 1;
    }
  }
  return false;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes in a sorted array, its length (n), and an element and returns whether the element is the majority element in the given sorted array. (The majority element is the element that occurs more than n/2 times.)
