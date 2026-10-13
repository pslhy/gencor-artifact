
function remove_nested(test_tup: any): [number, number, number, number] {
  if(test_tup.length != 4){
    throw new Error("Invalid test_tup array size");
  }
  const result = new Array(4);
  for(let i = 0; i < test_tup.length; i++){
    if(Array.isArray(test_tup[i])){
      result[i] = remove_nested(test_tup[i]);
    }else{
      result[i] = test_tup[i];
    }
  }
  return result.flat(Infinity) as [number, number, number, number];
}
console.log(remove_nested([1,[2, [3, [4]]]])); // [1, 2, 3, 4]
console.log(remove_nested(["[[1]]", "[2]", "[[3]]", "[4]"])); // ["[[1]]", "[2]", "[[3]]", "[4]"]
console.log(remove_nested("[[1]]")); // Type '"[[1]]"' is not assignable to parameter of type 'any[]'.

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove arrays from the given array.
