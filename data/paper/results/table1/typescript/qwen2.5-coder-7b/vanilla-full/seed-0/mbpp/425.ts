function count_element_in_list(list1: any[][], x: any): number { 
  let size1 = list1.length; 
  let count = 0; 
  
  for(let i = 0; i < size1; i++) { 
    let each_sub_list = list1[i]; 
    let sublistsize = each_sub_list.length; 
    for(let j = 0; j < sublistsize; j++) { 
      if (each_sub_list[j] === x) { 
        count = count + 1; 
      } 
    } 
  } 
  return count; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to count the number of subarrays containing a particular element.
