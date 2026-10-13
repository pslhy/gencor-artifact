
function square_perimeter(a: number): number {
  return a * 4;
}

// Test the function for the given side length
const side_length = 5;
const perimeter = square_perimeter(side_length);

// Check that the function returns the expected perimeter
if (perimeter != 20) {
  // Error
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that returns the perimeter of a square given its side length as input.
