function find_Max_Num(arr: number[]): number {
  if(arr.length == 0){
    throw new Error("No digits to construct a number")
  }
  let max = arr[0];
  let res = "";
  for(let i = 0; i<arr.length;i++){
    if(arr[i] > max){
      max = arr[i];
      res = "" 
    }
     res+=arr[i].toString()
    }
  return Number(res);
 }
let answer = find_Max_Num([1,2,3,9,8,9]);
/*
Expected output: 98312
*/
console.log(answer)


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the largest number that can be formed with the given array of digits.
