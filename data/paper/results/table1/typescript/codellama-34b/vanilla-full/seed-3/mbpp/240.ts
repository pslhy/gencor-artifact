function replace_list(list1: any[], list2: any[]): any[] {
  if(list1.length <= 0){
    return list1;
  }
  else {
    const result: any[] = list2;
    list1.pop(); //removes the last element of the list
    list1.push(result); //adds the array as the last element
    return list1;
  }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes in two arrays and replaces the last element of the first array with the elements of the second array.
