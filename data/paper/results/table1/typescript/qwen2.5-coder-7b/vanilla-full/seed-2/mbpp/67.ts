function bell_number(n: number): number { // Complexity: O(2^n)
  let result: number[] = [1];
  for (let i = 1; i <= n; i++) {
    result[i] = 0;
    for (let j = 0; j < i; j++) {
      result[i] += result[j] * binomialCoefficient(i - 1, j);
    }
  }
  return result[n];
}

function binomialCoefficient(n: number, k: number): number { // Complexity: O(n)
  if (k > n - k) {
    k = n - k;
  }
  let result: number = 1;
  for (let i = 0; i < k; i++) {
    result *= (n - i);
    result /= (i + 1);
  }
  return result;
}

function partitionCount(setSize: number): number { // Complexity: O(2^n * n!)
  let totalWays: number = 0;
  for (let k = 0; k <= setSize; k++) {
    totalWays += bell_number(k) * factorial(k);
  }
  return totalWays;
}

function factorial(num: number): number { // Complexity: O(n)
  let result: number = 1;
  for (let i = 2; i <= num; i++) {
    result *= i;
  }
  return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the number of ways to partition a set of Bell numbers.
