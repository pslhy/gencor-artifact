function extract_nth_element(list1: [string, number, number][], n: number): any[] {
  if(n < 0 || n >= list1.length){
    return [];
  } else {
    const result: any[] = [];
    for(const element of list1[n]){
      result.push(element);
    }
    return result;
  }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to extract the nth element from a given array of arrays.
