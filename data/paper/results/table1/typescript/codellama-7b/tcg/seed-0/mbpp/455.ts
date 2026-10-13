function check_monthnumb_number(monthnum2: number): boolean {
  const switchmonth2: any = new Number(monthnum2);
  switchmonth2.toString().length === 1 ? (monthnum2 === 1 ||
    monthnum2 === 3 ||
    monthnum2 === 5 ||
    monthnum2 === 7 ||
    monthnum2 === 8 ||
    monthnum2 === 10 ||
    monthnum2 === 12) : (monthnum2 === 4 ||
    monthnum2 === 6 ||
    monthnum2 === 9 ||
    monthnum2 === 11) ? true : false;
  return false;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check whether the given month number contains 31 days or not.