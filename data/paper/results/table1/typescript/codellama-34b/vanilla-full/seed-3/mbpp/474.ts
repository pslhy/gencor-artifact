function replace_char(str1: string, ch: string, newch: string): string {
  if(str1 !== ""){
     
  while (str1.indexOf(ch) !== -1) {
        str1 = str1.replace(ch, newch);
    }
    return str1;
  }else{
      return str1;
  }
 }
 
 const str = "Hello World!";

 console.log(replace_char(str, "H", "J"));


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to replace characters in a string.
