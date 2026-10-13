function smallest_num(xs: number[]): number {
  if(xs.length == 0)
    throw new Error("No numbers to find smallest of")
  var smallest = xs[0]
  for(var x of xs)
    if(x < smallest)
      smallest = x
  return smallest
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find smallest number in an array.
