function max_aggregate(stdata: [string, number][]): [string, number] {
  if(stdata.lenght === 0){
    return [, NaN];
  }
  let maxName: string, maxNumeber: number;
  for(const [name, number] of stdata){
    if(number > maxNumeber){
      maxName = name;
      maxNumeber = number
    }
  }
  return [maxName, maxNumeber]
}
*/

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to calculate the maximum aggregate from the array of arrays.
