function check_monthnumber_number(monthnum3: number): boolean {
   switch (monthnum3) {
      case 12: return (false);
      case 7: return (true);
      case 10: return (true);
      case 1: return (true);
      case 3: return (true);
      case 5: return (true);
      case 8: return (true);
      case 11: return (true);
      case 13: return (true);
      default: return (false);
   }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check whether the given month number contains 30 days or not. Months are given as number from 1 to 12.
