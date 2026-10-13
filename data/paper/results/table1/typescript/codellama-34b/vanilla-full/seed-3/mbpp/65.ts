function recursive_list_sum(data_list: (number | number[])[]): number {
  if(data_list.length == 0){
     return 0;
  }else if(isinstance(data_list[0], list)){
    return data_list[0].reduce((accumulator, current_value) => accumulator + current_value, 0);
  }else{
    return data_list[0];
  }
  return flatten(data_list).reduce((accumulator, current_value) => accumulator + current_value, 0);
}



function flatten(data: (number | number[])[]): number[] {
  const flattened: number[] = [];
  for (let element of data) {
    if (Array.isArray(element)) {
      flattened.push(...element);
    } else {
      flattened.push(element);
    }
  }
  return flattened;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to flatten an array and sum all of its elements.
