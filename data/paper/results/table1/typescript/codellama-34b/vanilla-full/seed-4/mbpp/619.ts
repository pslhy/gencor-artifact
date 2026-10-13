function move_num(test_str: string): string {
   let arr: Array<string> = test_str.split("")
   let sorted_arr: Array<string> = arr.sort((a: string, b: string) => a > b ? 1 : a < b ? -1 : 0);
   let sorted_num: string = sorted_arr.join("");
   return sorted_num;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to move all the numbers to the end of the given string.
