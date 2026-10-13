function amicable_numbers_sum(limit: number): number {;
  let sum = 0;

  function sumOfDivisors(n: number): number {
    let total = 0;
    for (let i = 1; i <= n / 2; i++) {
      if (n % i === 0) {
        total += i;
      }
    }
    return total;
  }

  for (let i = 1; i < limit; i++) {
    let num = sumOfDivisors(i);
    if (num !== i && sumOfDivisors(num) === i) {
      sum += i;
    }
  }

  return sum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sum all amicable numbers from 1 to a specified number.
