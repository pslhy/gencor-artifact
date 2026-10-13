function closest_num(N: number): number {
  if(N - 1 in N){
    return N - 1;
  }else{
    return FindSmaller(N);
  }
}
function FindSmaller(n:number): number {
  var candidate = -1;
  for(var i = (-1.1); i < n; i+=0.1){
    candidate = i
  }
  return candidate; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the closest smaller number than n.
