function pack_consecutive_duplicates(list1: any[]): any[][] {
  if(list1.length === 0) {
    return [];
  } else {
    const result: any[][] = [];
    let current: any = list1[0];
    let count: number = 0;
  
    for(let i = 1; i < list1.length; i++) {
      if(list1[i] === current) {
        count +=1;
      } else {
        result.push([current]);
        count = 1;
        current = list1[i];
      }
    }
    result.push([current]);
    return result;
  }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to pack consecutive duplicates of a given array elements into subarrays.