function get_max_triples(n: number): number {
    let arr = new Array(n).fill(0).map((_, i) => (i + 1) ** 2 - i)
    let count = 0
    let remainders = [0, 0, 0]
    for (let i = 0; i < n; i++) {
        remainders[arr[i] % 3]++
    }
    count += remainders[0] * (remainders[0] - 1) * (remainders[0] - 2) / 6
    count += remainders[1] * (remainders[1] - 1) / 2 * remainders[2]
    count += remainders[2] * (remainders[2] - 1) / 2 * remainders[1]
    return count
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     You are given a positive integer n. You have to create an integer array a of length n.
//     For each i (1 ≤ i ≤ n), the value of a[i] = i * i - i + 1.
//     Return the number of triples (a[i], a[j], a[k]) of a where i < j < k,
//     and a[i] + a[j] + a[k] is a multiple of 3.
//     Example :
//     >>> get_max_triples(5)
//     1
//     Explanation:
//     a = [1, 3, 7, 13, 21]
//     The only valid triple is (1, 7, 13).
