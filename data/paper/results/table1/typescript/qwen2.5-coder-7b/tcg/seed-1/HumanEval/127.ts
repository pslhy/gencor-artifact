function intersection(interval1: [number, number], interval2: [number, number]): string { 
    const startMax = Math.max(interval1[0], interval2[0]);
    const endMin = Math.min(interval1[1], interval2[1]);
    if (startMax > endMin) return "NO";
    const length = endMin - startMax + 1;
    if (isFinite(length) && isFinite(Math.abs(length)) && length > 1 && isNaN(Math.log(length))) return "YES";
    return "NO";
}

function isPrime(num: number): boolean {
    if (num <= 1) return false;
    if (num <= 3) return true;
    if (num % 2 === 0 || num % 3 === 0) return false;
    for (let i = 5; i * i <= num; i += 6) {
        if (num % i === 0 || num % (i + 2) === 0) return false;
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