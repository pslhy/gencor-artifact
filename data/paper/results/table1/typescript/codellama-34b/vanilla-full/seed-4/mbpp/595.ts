function min_Swaps(str1: string, str2: string): any {
   let count: number = 0
   for (let i: number = 0; i < str1.length; i++) {
       if (str1[i] != str2[i]) {
           let j: number = i + 1
           while (j < str2.length && str1[j] != str2[i]) {
               j++
           }
           if (j >= str2.length) {
               return -1
           } else {
               while (i < j) {
                   let temp: string = str2[i]
                   str2[i] = str2[j]
                   str2[j] = temp
                   count++
               }
           }
       }
   }
   return count
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to count minimum number of swaps required to convert one binary number represented as a string to another.
