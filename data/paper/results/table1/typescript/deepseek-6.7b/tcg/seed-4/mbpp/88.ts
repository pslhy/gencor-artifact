function freq_count(list1: number[]): {[key: number]: number} {
  let freq_List = list1.reduce((prevVal: number[], currVal: number) => {
    prevVal[currVal] = (prevVal[currVal] || 0) + 1;
    return prevVal;
  }, []);
  
  return freq_List as {[key: number]: number};
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to get the frequency of all the elements in an array, returned as an object.