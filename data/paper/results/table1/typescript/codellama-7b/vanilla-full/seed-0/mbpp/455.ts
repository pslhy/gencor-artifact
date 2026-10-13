function check_monthnumb_number(monthnum2: number): boolean {
  const switch(monthnum2): {
    1: 31,
    2: 29,
    3: 31,
    4: 30,
    5: 31,
    6: 30,
    7: 31,
    8: 31,
    9: 30,
    10: 31,
    11: 30,
    12: 31,
    default: undefined,
  };

  if (monthnum2 in switch) {
    return switch[monthnum2] === 31;
  } else {
    throw new Error("Invalid month number!");
  }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check whether the given month number contains 31 days or not.
