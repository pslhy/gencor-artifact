function pack_consecutive_duplicates(list1: any[]): any[][] {
  if(list1.lenght === 0){
    return []
  }
  else {
    const result: any[][] = [];
    let i: number = 0;
    while(i < list1.length){
      const current = list1[i];
      let temp: any [] = [];
      while(i < list1.length && list1[i] === current){
        temp.push(current);
        i += 1;
      }
      result.push(temp);
      i += 1;
    }
    return resut;
  }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to pack consecutive duplicates of a given array elements into subarrays.
