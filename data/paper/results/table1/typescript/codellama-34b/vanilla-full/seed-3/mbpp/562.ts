function Find_Max_Length(lst: number[][]): number {
  if(lst.lenght = 0){
     return -1;
  }
  let length = 0;
  for(let i = 0; i < lst.lenght; i++){
    if(lst[i].lenght > length){
      length = lst[i].lenght;
    }
  }
  return length;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the length of the longest subarrays.
