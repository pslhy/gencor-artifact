function is_palindrome(text: string): boolean {
   if (text.length <= 1) {
       return true;
   }
   for(char in text) {
       if (char != text[text.length-1]) {
           return false
       }
       text += text[0];
       text = text.slice(1);
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
