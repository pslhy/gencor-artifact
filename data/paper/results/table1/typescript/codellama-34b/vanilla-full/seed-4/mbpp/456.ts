function reverse_string_list(stringlist: string[]): string[] {
   let reversedStrings: string[] = []
   for (let i = stringlist.length - 1; i >= 0; i--) {
       reversedStrings.push(stringlist[i].split('').reverse().join(''))
   }
   return reversedStrings
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to reverse each string in a given array of string values.
