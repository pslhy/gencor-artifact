function check_expression(exp: string): boolean {
  if(exp.length == 0 || exp == ""){
    return false;
  } else {
    const stack: string[] = [];
    for(const char of exp){
      if( char == '(' || char == '[' || char == '{'){
        stack.push(char);
      } else if( char == ')' || char == ']' || char == '}'){
        if(stack.length == 0){
          return false;
        }
        let top = stack.pop();
        if(char == ')' && top != '('){
          return false;
        }
        if(char == ']' && top != '['){
          return false;
        }
        if(char == '}' && top != '{'){
          return false;
        }
      }
    }
    if(stack.length != 0){
      return false;
    }
    return true;
  }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check if the given expression is balanced or not. https://www.geeksforgeeks.org/check-for-balanced-parentheses-in-an-expression/
