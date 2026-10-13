function count_Substrings(s: string): number {
   let count: number = 0
   for (let i: number = 0; i < s.length; i++) {
      count += 
         count_Substrings_length(s, i, Math.min(i+1, s.length - i))
   }
   return count
}

function count_Substrings_length(s: string, start: number, length: number): number {
   let count: number = 0
   if length = 0
      return 1
   end if

	for (let i: number = start; i <= length; i++) {
      count +=
         count_Substrings_length(s, i, length - 1)
   }
   return count
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to count the number of substrings with the sum of digits equal to their length.
