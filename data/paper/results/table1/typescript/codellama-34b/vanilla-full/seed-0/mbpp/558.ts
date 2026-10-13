function digit_distance_nums(n1: number, n2: number): number {
  const digits1 = String(n1).split("").map(Number);
  const digits2 = String(n2).split("").map(Number);

  let sum = 0;

  for (let i = 0; i < digits1.length && i < digits2.length; i++) {
    sum += Math.abs(digits1[i] - digits2[i]);
  }

  if (digits1.length < digits2.length) {
    sum += digits2.slice(digits1.length).reduce((a, b) => a + b);
  } else if (digits2.length < digits1.length) {
    sum += digits1.slice(digits2.length).reduce((a, b) => a + b);
  }

  return sum;
}

function test(n1, n2, expected) {
  const actual = digit_distance_nums(n1, n2);
  console.log(actual === expected ? "PASS" : "FAIL: Expected", expected, "but got", actual);
}

test(123, 456, 24);
test(123, 4567, 31);


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the sum of the per-digit difference between two integers.
