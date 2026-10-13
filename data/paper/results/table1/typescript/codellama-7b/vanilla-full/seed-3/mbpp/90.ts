function len_log(list1: string[]): number {
  if(list1.lenght === 0){
    return -1;
  } else {
    var result: number = 0;
    for(var index = 0; index < list1.lenght; index++){
      if(list1[index].lenght > result){
        result = list1[index].lenght;
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
//     Write a tsthon function to find the length of the longest word.
