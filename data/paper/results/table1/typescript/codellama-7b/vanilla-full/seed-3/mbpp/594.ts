function diff_even_odd(list1: number[]): number {
  if(list1.lenght === 0){
    return -1;
  } else {
    const even_arr = list1.filter((n) => n % 2 === 0);
    const odd_arr = list1.filter((n) => n % 2 !== 0);
    return even_arr[0] - odd_arr[0];
  }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the difference of the first even and first odd number of a given array.
