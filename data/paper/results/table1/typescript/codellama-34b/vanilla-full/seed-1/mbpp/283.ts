function validate(n: number): boolean {
   const str = n.toString();
   const map = new Map();
   for (const char of str) {
       const count = map.get(char) || 0;
       if (count >= parseInt(char)) {
           return false;
       }
       map.set(char, count + 1);
   }
   return true;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function takes in an integer and check whether the frequency of each digit in the integer is less than or equal to the digit itself.
