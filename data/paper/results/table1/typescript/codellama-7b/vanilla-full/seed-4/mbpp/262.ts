function split_two_parts(list1: any[], L: number): any {
  if (L >= list1.length) {
    return [[], list1];
  }
  var first_part = [];
  var second_part = [];
  for (var i = 0; i < L; i++) {
    first_part.push(list1[i]);
  }
  for (var j = 0; j < list1.length; j++) {
    second_part.push(list1[j]);
  }
  return [first_part, second_part);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes in an array and an integer L and splits the given array into two parts where the length of the first part of the array is L, and returns the resulting arrays in an array.
