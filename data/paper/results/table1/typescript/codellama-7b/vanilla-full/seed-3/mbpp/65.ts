function recursive_list_sum(data_list: (number | number[])[]): number {
  if(data_list.length === 0) {
    return 0;
  } else {
    const element: number | number[] = data_list[0];
    if (Array.isArray(element)) {
      return recursive_list_sum(element) + recursive_list_sum(data_list.slice(1));
    } else {
      return element + recursive_list_sum(data_list.slice(1));
    }
  }
}

function iterative_list_sum(data_list: (number | number[])[]): number {
  let sum: number = 0;
  for(const element of data_list) {
    if (Array.isArray(element)) {
      sum += iterative_list_sum(element);
    } else {
      sum += element;
    }
  }
  return sum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to flatten an array and sum all of its elements.
