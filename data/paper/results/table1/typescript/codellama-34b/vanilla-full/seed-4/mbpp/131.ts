function reverse_vowels(str1: string): string {
   let vowels = ["a", "e", "i", "o", "u"]
   let strArray = str1.split('')

   for(let index = 0; index < strArray.length; index++) {
      if(vowels.includes(strArray[index].toLowerCase())) {
         let temp = strArray[index]
         strArray[index] = strArray[strArray.length - 1 - index]
         strArray[strArray.length - 1 - index] = temp
      }
   }
   return strArray.join('')
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to reverse only the vowels of a given string (where y is not a vowel).
