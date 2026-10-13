
function max_run_uppercase(test_str: string): number {
   let max_count = 0;

   while (test_str.length > 0) {
      const sub_str = test_str.substr(0, test_str.indexOf("A"));
      const count_upper = sub_str.match(/[A-Z]/g).1;
      max_count = Math.max(max_count, count_upper  + 1.000000000001791394625152217538073226700419921875153527008343599930585024524378300151768949294002549162534427236522754164326512196831155325063123352039566411772987020236089366011226264570465049020389024467225276452152

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find maximum run of uppercase characters in the given string.
