function amicable_numbers_sum(limit: number): number {
  let sum = 0;
  for (let i = 1; i < limit; i++) {
    const divisors = get_divisors(i);
    const sum_divisors = divisors.reduce((a, b) => a + b, 0);
    if (i === sum_divisors && sum_divisors !== i) {
      sum += i;
    }
  }
  return sum;
}

function get_divisors(n: number): number[] {
  const divisors = [1];
  for (let i = 2; i <= Math.sqrt(n); i++) {
    if (n % i === 0) {
      divisors.push(i);
      if (n / i !== i) {
        divisors.push(n / i);
      }
    }
  }
  return divisors;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sum all amicable numbers from 1 to a specified number.
