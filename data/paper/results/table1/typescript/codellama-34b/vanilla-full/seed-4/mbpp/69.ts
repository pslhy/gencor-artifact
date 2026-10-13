function is_sublist(l: number[], s: number[]): boolean {
   if (s.length > l.length) return false
   let i = 0
   while (i < l.length - s.length + 1) {
       if (l[i] === s[0]){
           let j = 1
           while (j < s.length) {
               if (l[i+j] !== s[j]) break
               j += 1
           }
           if (j === s.length) return true
       }
       i += 1
   }
   return false
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check whether an array contains the given subarray or not.
