function heap_sort(iterable: number[]): number[] {
  if(iterable.length <= 1){
    return iterable;
  }
  else{
    const result: number[] = [];
    const n = Math.floor(Math.log2(iterable.length));
    for(let i = 0; i < n; i++){
      result.push(iterable[i]);
    }
    for(let i = 0; i < iterable.length; i++){
      result.unshift(iterable[n]);
      n == n + 1;
    }
    return result;
  }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort the given array.