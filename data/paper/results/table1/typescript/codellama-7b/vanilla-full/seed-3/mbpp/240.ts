function replace_list(list1: any[], list2: any[]): any[] {
  if(list1.length <= list2.length) {
    for(let i = list1.length; i > 0; i--) {
      list1[i] = list2[i];
    }
    return list1;
  }
  else {
    let extra_elements = list1.splice(list2.length);
    for(let i = 0; i < list1.length; i++) {
      list2[i] = list1[i];
    }
    list1 = list2;
    list2 = extra_elements;
    return replace_list(list1, list2);
  }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes in two arrays and replaces the last element of the first array with the elements of the second array.
