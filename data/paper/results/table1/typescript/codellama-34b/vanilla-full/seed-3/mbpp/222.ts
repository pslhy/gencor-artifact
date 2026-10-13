function check_type(test_tuple: any): boolean {
  if(test_tuple.length == 0){
     return true;
  }
  else {
    var result: boolean = true;
    var first_type: string = typeof test_tuple[0];
    for (var i = 1; i < test_tuple.length; i++){
      if(typeof test_tuple[i] != first_type){
        result = false;
        break;
      }
    }
    return result;
  }
}

//Test cases
console.log(check_type([1,2,3,4,5])); //true
console.log(check_type(["hello","world"])); //true
console.log(check_type([1,"2",3,"4",5])); //false


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check if all the elements in array have same data type or not.
