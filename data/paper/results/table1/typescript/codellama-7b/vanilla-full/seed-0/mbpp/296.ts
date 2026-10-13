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
    let i: number = 0,
      j: number = 0,
      k: number = l;
    while ((i < n1) && (j < n2)) {
      if (L[i] <= R[j]) {
        arr[k++] = L[i++];
      } else {
        arr[k++] = R[j++];
        ++inversions;
      }
    }
    while (i < n1) {
      arr[k++] = L[i++];
    }
    while (j < n2) {
      arr[k++] = R[j++];
    }
    return inversions;
  }
  const mergeSort = (arr: number[], l: number, r: number): number => {
    let inversions = 0;
    if (l < r) {
      const m = Math.floor((l + r) / 2);
      inversions += mergeSort(arr, l, m);
      inversions += mergeSort(arr, m + 1, r);
      inversions += merge(arr, l, m, r);
    }
    return inversions;
  }
  return mergeSort(arr, 0, arr.length - 1);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to count inversions in an array.
