function are_equivalent(num1: number, num2: number): boolean {
  if(num1 === num2) {
    return true;
  }

  const divisors1 = new Set(get_divisors(num1));
  const divisors2 = new Set(get_divisors(num2));

  for(const divisor of divisors1) {
    if(divisors2.has(divisor)) {
      return true;
    }
  }

  return false;
}

function get_divisors(num: number): number[] {
  const divisors = [];
  for(let i = 1; i <= num; i++) {
    if(num % i === 0) {
      divisors.push(i);
    }
  }
  return divisors;
}

are_equivalent(4, 8); // true
are_equivalent(3, 9); // false


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to determine if the sum of the divisors of two integers are the same.
