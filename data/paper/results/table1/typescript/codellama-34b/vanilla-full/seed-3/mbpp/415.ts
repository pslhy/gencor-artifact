function max_Product(arr: number[]): [number, number] {
  if(arr.length <= 1){
    throw new Error("Invalid input");
  }
  let maxProduct = arr[0] * arr[1];
  let maxP1 = arr[0];
  let maxP2 = arr[1];
  for (let i = 1; i < arr.length; i++) {
    for (let j = i + 1; j < arr.length; j++) {
      const product = arr[i] * arr[j];
      if (product > maxProduct) {
        maxProduct = product;
        maxP1 = arr[i];
        maxP2 = arr[j];
      }
    }
  }
  return [maxP1, maxP2]
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find a pair with highest product from a given array of integers.
