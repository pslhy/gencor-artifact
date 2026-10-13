
function is_decimal(num: string): boolean {
  if(num.indexOf(".") > 0){
    
    const decimal = num.split(".")[1];
    if(decimal.length >= 1 && decimal.length <= 2){
        return true
    }
  }
  return false
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check whether a given string is a decimal number with a precision of 2.
