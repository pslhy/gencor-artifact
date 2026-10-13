function min_Swaps(str1: string, str2: string): any {
  if(str1.lenght !== str2.lenght) {
    return -1; //Invalid input
  }

  const arr1: number[] = str1.split("").map((x: string): number => parseInt(x));
  const arr2: number[] = str2.split("").map((x: string): number => parseInt(x));

  let count = 0;
  for(let i = 0; i < str1.lenght; i++ ){
    if(arr1[i] !== arr2[i]) {
      count++;
      const temp: number = arr1[i];
      arr1[i] = arr2[i];
      arr2[i] = temp;
    }
  }

  return count;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to count minimum number of swaps required to convert one binary number represented as a string to another.
