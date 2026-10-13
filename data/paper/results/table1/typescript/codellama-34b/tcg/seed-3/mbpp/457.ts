function Find_Min(lst: any[][]): any[] {
  if(lst.length == 0){
    throw new Error("No minimum length subarray found")
  }
  let min = lst[0];
  let res = lst[0];
  for(let i = 1; i < lst.length; i++){
    if(lst[i].length < min.length){
      
      res = [lst[i]];
    }
    else if(lst[i].length == min.length){
      res.push(lst[i]);
    }
  }
  return res;
}

const input = [[1,2], [3,4], [5,6]];
const result = Find_Min(input);


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the subarray having minimum length.