function get_max_sum(n: number): number {
  if (n === 1) {
    return n;
  }

  const f = (n: number, d: number) => {
    if (n === 1) {
      return n;
    }

    const f_call = f(n, d - 1) + n;
    if (f_call > n) {
      return f_call;
    } else {
      return n;
    }
  };

  let max_sum = 0;
  for (let i = 2; i <= n; i++) {
    const sum = f(i, 5);
    if (sum > max_sum) {
      max_sum = sum;
    }
  }

  return max_sum;
}

console.log(get_max_sum(10)); // 36
console.log(get_max_sum(11)); // 40
console.log(get_max_sum(15)); // 60
console.log(get_max_sum(20)); // 80


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum sum possible by using the given equation f(n) = max( (f(n/2) + f(n/3) + f(n/4) + f(n/5)), n).
