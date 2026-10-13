function intersection(interval1: [number, number], interval2: [number, number]): string {
    // Get the endpoints of the intersection if it exists
    const start = Math.max(interval1[0], interval2[0]);
    const end = Math.min(interval1[1], interval2[1]);

    // If the start is greater than or equal to the end, return "NO" since there is no intersection
    if (start >= end) {
        return "NO";
    }

    // Compute the length of the intersection
    const length = end - start;

    // Check if the length of the intersection is a prime number
    if (length < 2) {
        return "NO";
    }
    for (let i = 2; i * i <= length; i++) {
        if (length % i === 0) {
            return "NO";
        }
    }

    return "YES";
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
