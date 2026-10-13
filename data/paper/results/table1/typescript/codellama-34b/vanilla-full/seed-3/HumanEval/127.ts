function intersection(interval1: [number, number], interval2: [number, number]): string {
  const intersection = [
    Math.max(interval1[0], interval2[0]),
    Math.min(interval1[1], interval2[1])
  ];

  if (intersection[0] <= intersection[1]) {
    const length = intersection[1] - intersection[0] + 1;
    if (isPrime(length)) {
      return "YES";
    } else {
      return "NO";
    }
  } else {
    return "NO";
  }
}

function isPrime(num: number): boolean {
  if (num < 2) {
    return false;
  }

  for (let i = 2; i * i <= num; i++) {
    if (num % i === 0) {
      return false;
    }
  }

  return true;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     You are given two intervals,
//     where each interval is a pair of integers. For example, interval = (start, end) = (1, 2).
//     The given intervals are closed which means that the interval (start, end)
//     includes both start and end.
//     For each given interval, it is assumed that its start is less or equal its end.
//     Your task is to determine whether the length of intersection of these two
//     intervals is a prime number.
//     Example, the intersection of the intervals (1, 3), (2, 4) is (2, 3)
//     which its length is 1, which not a prime number.
//     If the length of the intersection is a prime number, return "YES",
//     otherwise, return "NO".
//     If the two intervals don't intersect, return "NO".
//     [input/output] samples:
//     >>> intersection([1, 2], [2, 3])
//     "NO"
//     >>> intersection([-1, 1], [0, 4])
//     "NO"
//     >>> intersection([-3, -1], [-5, 5])
//     "YES"
