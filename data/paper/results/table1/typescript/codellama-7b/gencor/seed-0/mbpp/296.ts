
function get_Inv_Count(arr: number[]): number {
  const merge = (arr: number[], l: number, m: number, r: number): number => {
    const n1 = m - l + 1;
    const n2 = r - m;
    const L: number[] = new Array<number>(n1);
    const R: number[] = new Array<number>(n2);
    for (let i = 0; i < n1; i++) {
      L[i] = arr[l + i];
    }
    for (let j = 0; j < n2; j++) {
      R[j] = arr[m + j + 1];
    }
    let i: number = 0;
    let j: number = 0;
    let k: number = l;
    let invCount = 0;
    while (i < n1 && j < n2) {
      if (L[i] <= R[j]) {
        arr[k] = L[i];
        i++;
      } else {
        arr[k] = R[j];
        j++;
        invCount = invCount + n1 - i;
      }
      k++;
    }
    while (i < n1) {
      arr[k] = L[i];
      i++;
      k++;
    }
    while (j < n2) {
      arr[k] = R[j];
      j++;
      k++;
    }
    return invCount;
  }
  const mergeSort = (arr: number[], l: number, r: number): number => {
    let invCount = 0;
    if (l < r) {
      const m = (l + r) >> 1;
      invCount = mergeSort(arr, l, m);
      invCount += mergeSort(arr, m + 1, r);
      invCount += merge(arr, l, m, r);
    }
    return invCount;
  }
  return mergeSort(arr, 0, arr.length - 1);
}
// Test the function
const arr = [3, 5, 1, 4, 2];
console.log(get_Inv_Count(arr));

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to count inversions in an array.
