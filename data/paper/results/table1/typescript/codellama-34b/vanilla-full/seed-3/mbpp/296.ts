function get_Inv_Count(arr: number[]): number {
  if(arr.length <= 1){
    return 0;
  }
  const mid: number = Math.floor(arr.length / 2);
  const left: number[] = arr.slice(0, mid);
  const right: number[] = arr.slice(mid);
  const leftcount: number = get_Inv_Count(left);
  const rightcount: number = get_Inv_Count(right);
  const cut_Count: number = countCuts(arr, mid);
  return leftcount + rightcount + cut_Count);
}

function countCuts(arr: number[], mid: number):number {
  let count: number = 0;
  for(let i = mid; i < arr.length; i++){
    for(let j =0; j < mid; j++){
      if(arr[j] > arr[i]){
        count++;
      }
    }
  }
  return count;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to count inversions in an array.
