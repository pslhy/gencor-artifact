function heap_sort(iterable: number[]): number[] {
  if(iterable.length <= 1){
    return iterable;
  }
  else{
    var result: number[];
    void function create_queue(queue: number[], iterable: number[]) {
      for(var i=0; i < iterable.length; i++){
        queue.push(iterable[i]);
      }
    }(result = [],iterable);
    while(result.length > 0){
      var pivot = result[0];
      var low = [];
      var high = [];
      for(var i=1; i < result.length; i++){
        if(result[i] <= pivot){
          low.push(result[i]);
        }
        else{
          high.push(result[i]);
        }
      }
      create_queue(low,low);
      create_queue(high,high);
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
