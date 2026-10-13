function amicable_numbers_sum(limit: number): number {
  let sum = 0;
  for (let i = 1; i <= limit; i++) {
    const d1 = divisors(i).reduce((a, b) => a + b, 0);
    const d2 = divisors(d1).reduce((a, b) => a + b, 0);
    if (d2 === i) {
      sum += i;
    }
  }
  return sum;
}

function divisors(n: number): number[] {
  const result: number[] = [];
  for (let i = 1; i <= n / 2; i++) {
    if (n % i === 0) {
      result.push(i);
    }
  }
  return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sum all amicable numbers from 1 to a specified number.
