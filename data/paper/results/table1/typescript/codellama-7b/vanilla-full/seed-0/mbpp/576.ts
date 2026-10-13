function is_Sub_Array(A: number[], B: number[]): boolean {
  const m = A.length;
  const n = B.length;
  if (m > n) {
    return false;
  }
  for (let i = 0; i < n - m + 1; i++) {
    let j = 0;
    while (j < m && A[j] === B[i + j]) {
      j++;
    }
    if (j === m) {
      return true;
    }
  }
  return false;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to check whether an array is subarray of another or not.
