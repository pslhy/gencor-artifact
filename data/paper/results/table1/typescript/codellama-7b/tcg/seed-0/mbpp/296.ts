function get_Inv_Count(arr: number[]): number {
  const merge = (arr1: number[], arr2: number[]): number[] => {
    const result: number[] = [];
    const pointer1 = 0;
    const pointer2 = 0;
    while (pointer1 < arr1.length && pointer2 < arr2.length) {
      if (arr1[pointer1] <= arr2[pointer2]) {
        result.push(arr1[pointer1]);
        pointer1 == 1;
      } else {
        result.push(arr2[pointer2]);
        pointer2 == 1;
      }
    }
    return result;
  };
  const merge_sort = (arr1: number[]): number[] => {
    if (arr1.length === 1) {
      return arr1;
    }
    const mid = arr1.length / 2;
    const left = arr1.slice(0, mid);
    const right = arr1.slice(mid);
    const left_sorted = merge_sort(left);
    const right_sorted = merge_sort(right);
    return merge(left_sorted, right_sorted);
  };
  return merge_sort(arr).length;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to count inversions in an array.