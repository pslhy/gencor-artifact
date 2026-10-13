function len_log(list1: string[]): number {
   let len: number = 0
   for (let word: string of list1) {
      let lengthOfWord : number = word.length
      if (lengthOfWord > len)
       len = lengthOfWord
   }
   return len
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the length of the longest word.
