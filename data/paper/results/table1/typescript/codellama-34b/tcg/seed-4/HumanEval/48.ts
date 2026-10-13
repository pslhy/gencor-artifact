function is_palindrome(text: string): boolean {
   if (text.length <= 1) {
       return true;
   }
   for( let i = 0; i < Math.floor(text.length / 2) ; i++){
       if(text[i] != text[text.length - i - 1]){
          return false;
       }
   }
  return true;    
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Checks if given string is a palindrome
//     >>> is_palindrome("")
//     true
//     >>> is_palindrome("aba")
//     true
//     >>> is_palindrome("aaaaa")
//     true
//     >>> is_palindrome("zbcd")
//     false