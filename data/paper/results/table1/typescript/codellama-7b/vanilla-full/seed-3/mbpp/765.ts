function is_polite(n: number): number {
  if(n < 10) {
    return 1;
  }
  const str: string = n.toString();
  const digits: string[] = str.split("");
  let count: number = 0;

  for(let i: number = 0; i < digits.length; i++) {
    const digit: number = +digits[i];
    if(digit >= 1 && digit <= 9) {
      count += 1;
    }
  }
  return count >= 2 ? 1 : 0;
}

function polite_number(n: number, count: number): number {
  let polite_n: number = 0;
  while(count >= n) {
    polite_n = 10 * polite_n + 1;
    count += is_polite(polite_n);
  }
  return polite_n;
}

function nth_polite_number(n: number): number {
  let count: number = 0;
  let polite_n: number = 0;
  while(count < n){
    polite_n += 1;
    count += is_polite(polite_n);
  }
  return polite_n;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find nth polite number. geeksforgeeks.org/n-th-polite-number/
