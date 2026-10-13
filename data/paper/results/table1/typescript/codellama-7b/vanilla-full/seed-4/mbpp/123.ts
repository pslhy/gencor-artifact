function amicable_numbers_sum(limit: number): number {
  let sum: number = 0;
  for (let i = 1; i <= limit; i++) {
    let d1: number = i;
    let d2: number = amicable_sum_of_divisors(i);
    if (d1 === d2 && d1 !== i) {
      sum += i;
    }
  }
  return sum;
}

function amicable_sum_of_divisors(n: number): number {
  let sum: number = 1; // inclusive of n
  for (let i = 2; i * i <= n; i++) {
    if (n % i === 0) {
      sum += i + n / i;
    }
  }
  return sum;
}

console.log(amicable_numbers_sum(10)); // should output 22


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sum all amicable numbers from 1 to a specified number.
