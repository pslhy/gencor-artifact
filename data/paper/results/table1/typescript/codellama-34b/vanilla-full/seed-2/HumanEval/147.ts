function get_max_triples(n: number): number {
    let count = 0;
    for (let i = 1; i <= n; i++) {
        let a = i * i - i + 1;
        for (let j = i + 1; j <= n; j++) {
            let b = j * j - j + 1;
            if ((a + b) % 3 === 0) {
                count++;
            }
        }
    }
    return count;
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
