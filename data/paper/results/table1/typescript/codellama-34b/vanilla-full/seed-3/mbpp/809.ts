function check_smaller(test_tup1: [number, number, number], test_tup2: [number, number, number]): boolean {
  if(test_tup1.length != test_tup2.length()) {
    return false;
  }
  for(var i = 0; i < test_tup1.length; i++) {
    if(test_tup1[i] >= test_tup2[i]) {
      return false;
    }
  }
  return true;
}
function get_smaller_tup(tup1: [number, number, number], tup2: [number, number, number]) {
  if(tup1[0] < tup2[0]) {
    return tup1;
  } else if(tup1[1] < tup2[1]) {
    return tup1;
  } else if(tup1[2] < tup2[2]) {
    return tup1;
  } else {
    return tup2;
  }
}
let test_tup1: [number, number, number] = [1, 2, 3];
let test_tup2: [number, number, number] = [4, 5, 6];
console.log(check_smaller(test_tup1, test_tup2));
console.log(get_smaller_tup(test_tup1, test_tup2));


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check if each element of second array is smaller than its corresponding element in the first array.
