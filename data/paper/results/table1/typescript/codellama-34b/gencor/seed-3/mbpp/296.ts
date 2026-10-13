
function get_Inv_Count(arr: number[]): number {
  if(arr.length <= 1){
    return 0;
  }
  const mid: number = Math.floor(arr.length / 2);
  const left: number[] = arr.slice(0, mid);
  const right: number[] = arr.slice(mid);
  const leftcount: number = get_Inv_Count(left);
  const rightcount: number = get_Inv_Count(right);
  const cut_Count: number = get_Inv_Count(left);
  return leftcount + rightcount + cut_Count;
}

function get_Inv_Counfon(arr: number[], low: number, high: number): number {
  if(high <= low){
    return 0;
  }
  const mid: number = Math.floor((low + high) / 2);
  const leftcount: number = get_Inv_Counfon(arr, low, mid);
  const rightcount: number = get_Inv_Counfon(arr, mid + 1, high);
  const cutcounter: number = get_Inv_Counfon(arr, low, mid, 
 
 

  );
  const swap_Count: number = get_Inv_Counfon(arr, cutcounter, cutcounter, 
 
 

  );
  return leftcount + rightcount - swap_Count;
}

function get_Inv_Counfter(arr: number[], low: number, mid: number, high: number): number {
  let ans: number = 0;
  const n1: number = mid - low + 1;
  const n2: number = high - mid;
  const leftArr: number[] = new Array<number>(n1);
  const rightArr: number[] = new Array<number>(n2);
  for(let i: number = 0; i < n1; i++){
    leftArr[i] = arr[low + i];
  }
  for(let i: number = 0; i < n2; i++){
    rightArr[i] = arr[mid + 1 + i];
  }
  let i: number = 0;
  let j: number = 0;
  for(let k: number = low; k <= high; k++){
    if(i < n1 && (j >= n2 || leftArr[i] <= rightArr[j])){
      arr[k] = leftArr[i];
      i++;
    } else {
      arr[k] = rightArr[j];
      j++;
      ans += n1 - i;
    }
  }
  return ans;
}

function get_Inv_Count(arr: number[], low: number, high: number): number {
  if(high <= low){
    return 0;
  }
  const mid: number = Math.floor((low + high) / 2);
  const leftcount: number = get_Inv_Count(arr, low, mid);
  const rightcount: number = get_Inv_Count(arr, mid + 1, high);
  return leftcount + rightcount + get_Inv_Counfon(arr, low, mid, 
 
 

  );
}

console.log(get_Inv_Count

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to count inversions in an array.
