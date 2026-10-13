function find_Index(n: number): number {
  const digits = Array(n).fill(0);
  let triangularNumber = 0;

  for (let i = 0; i < n; i++) {
    // Calculate the 'i'th triangular number
    triangularNumber += Math.pow(10, i);

    // Get the last digit of the 'i'th triangular number
    const lastDigit = triangularNumber % 10;

    // Update the digits array with the last digit
    digits[i] = lastDigit;
  }

  // Find the smallest triangular number with the given digits
  const smallestTriangularNumber = digits.reduce((a, b) => a * 10 + b);
  return smallestTriangularNumber;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the index of smallest triangular number with n digits. https://www.geeksforgeeks.org/index-of-smallest-triangular-number-with-n-digits/
