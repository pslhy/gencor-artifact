function change_date_format(dt: string): string {
  if(dt.match(/^\d{4}-\d{2}-\d{2}$/g) {
      const y: string = dt.substring(0,4);
      const m: string = dt.substring(5,7);
      const d: string = dt.substring(8,10);
      return `${d}-${m}-${y}`;
  } else {
    throw new Error("Invalid date format");
  }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to convert a date of yyyy-mm-dd format to dd-mm-yyyy format.
