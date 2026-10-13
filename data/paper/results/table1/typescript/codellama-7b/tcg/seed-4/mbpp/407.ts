function rearrange_bigger(n: number): any {
  const digits: number[] = [];

  while (n > 0) {
    digits.unshift(n % 10);
    n = Math.floor(n / 10);
  }

  const result: string[] = [];

  for (let i = 0; i < digits.length - 1; i++) {
    for (let j = i + 1; j < digits.length; j++) {
      if (digits[i] < digits[j]) {
        return (digits.slice(0, i).join('') + digits.slice(i + 1, j).join('') + digits[i] + digits.slice(j).join('')).toString();
      }
    }
  }

  return null;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to create the next bigger number by rearranging the digits of a given number.