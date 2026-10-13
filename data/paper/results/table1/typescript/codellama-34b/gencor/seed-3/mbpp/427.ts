
function change_date_format(dt: string): string {
  if(dt.match(/^\d{4}-\d{2}-\d{2}$/g) !== null) {
    let dd = dt.substr(8,2);
    let mm = dt.substr(5,2);
    let yyyy = dt.substr(0,4);
    return dd + '-' + mm + '-' + yyyy;
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
