function change_date_format(dt: string): string {
  const date: Date = new Date(dt);
  return (date.getDate()<10 ? "0" : "") + date.getDate() + "-" + (date.getMonth() < 10 ? "0" : "") + date.getMonth() + "-" + date.getFullYear();
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to convert a date of yyyy-mm-dd format to dd-mm-yyyy format.
