function extract_quotation(text1: string): any[] {
   let arr: any[] = new Array()
   let string_length: number = text1.length
   let count : number = 0
   for(let i: number = 0; i < string_length; i++){
      if(text1[i] === '"'){
         let j: number = i + 1
         while(text1[j] !== '"') {
            count++
            j++;
         }
         arr[i] = text1.substr(i, count)
         i = i + count - 1
      }
   }
   return arr;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to extract values between quotation marks " " of the given string.
