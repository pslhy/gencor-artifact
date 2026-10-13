function max_difference(test_list: [number, number][]): number {
  if(test_list.length < 5){
     return -1;
  }
  test_list.sort(function(a,b){
    return test_list[1] > test_list[0]? -1 : 1;
  });
  let max = test_list[0];
  for(let i=1;i < test_list.length; i+=2){
    max = Math.max(max+test_list[i+1]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum difference between available pairs in the given array array.