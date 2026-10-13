function tup_string(tup1: string[]): string {
   let tup2: string = "";
   for (let i = 0; i < tup1.length; i++) {
       tup2 += tup2 + tup1[i].toString();
   }
   return tup2;
}

console.log(tup_string(["Hi", "Bye", 1,2,2,1]));


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to convert an array to a string.
