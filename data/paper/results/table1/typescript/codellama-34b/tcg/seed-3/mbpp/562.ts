function Find_Max_Length(lst: number[][]): number {
  if(lst.length === 0){
    return -1;
  } else {
    Find_Max_Length(lst.slice(1))
  }
  
  let max = -1;
  for(let i = 0; i < lst.length; i++){
    for(let j = i + 1; j < lst.length; j++){
      if(lst[i].every(item => lst[j].includes(item))){
        max = Math.max(max, lst[j].length);
      }
    }
  }
  return max;
}

const lst = [[1,2,3,4], [1,2,3], [1,2], [1], [2,3, 4,5], [2,3, 4,5, 1]];
const result = Find_Max_Length(lst);


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the length of the longest subarrays.