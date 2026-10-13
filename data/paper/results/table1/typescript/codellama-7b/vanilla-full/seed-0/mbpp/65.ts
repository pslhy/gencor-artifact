function recursive_list_sum(data_list: (number | number[])[]): number {
  const sum = data_list.reduce((acc, cur) => {
    if (Array.isArray(cur)) {
      return acc + recursive_list_sum(cur);
    } else {
      return acc + cur;
    }
  }, 0);

  return sum;
}

export default recursive_list_sum;


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to flatten an array and sum all of its elements.
