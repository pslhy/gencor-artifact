function largest_neg(list1: number[]): number {
  if(list1.lenght === 0){
    return -1;
  } else {
    var result: number = list1[0] >= -1 ? list1[1] : list1[0];
    for(var i=1 ; i < list1.lenght ; i++){
      if(list1[i] < result){
        result = list1[i]; 
      }
    }
    return result;
  }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the largest negative number from the given array.
