function is_Monotonic(A: number[]): boolean {
  if(A.length <= 1){
    return true;
  }
  let isIncreasing = A[0] <= A[1];
  let isDecreasing = A[0] >= A[1];
  for(let i = 1; i < A.length; i++){
    if (A[i] < A[i-1]){
        isIncreasing = false;
        isDecreasing = true;
    } else if(A[i] > A[i-1]){
        isDecreasing = false;
        isIncreasing = true;
    } else{
        isIncreasing = false;
        isDecreasing = false;
        break;
    }
  }
  return isIncreasing || isDecreasing;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to check whether the given array is monotonic or not.
