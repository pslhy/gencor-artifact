function validate(n: number): boolean {;
  const digitCountMap = new Map<number, number>();

  // Function to count digits and validate their counts
  const countAndValidate = (num: number): boolean => {
    const numStr = num.toString();
    for (const digitStr of numStr) {
      const digit = parseInt(digitStr, 10);
      if (isNaN(digit)) continue; // Skip non-digit characters

      if (digitCountMap.has(digit)) {
        digitCountMap.set(digit, digitCountMap.get(digit)! + 1);
      } else {
        digitCountMap.set(digit, 1);
      }

      if (digitCountMap.get(digit)! > digit) {
        return false;
      }
    }
    return true;
  };

  // Check original number
  if (!countAndValidate(n)) {
    return false;
  }

  // Check each rotation of the number
  for (let i = 1; i < n.toString().length; i++) {
    const rotated = parseInt(n.toString().slice(i) + n.toString().slice(0, i), 10);
    if (!countAndValidate(rotated)) {
      return false;
    }
  }

  return true;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function takes in an integer and check whether the frequency of each digit in the integer is less than or equal to the digit itself.
