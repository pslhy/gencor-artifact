function get_max_triples(n: number): number {
    let count = 0;
    let arr = [];
    for(let i = 1;i <= n;i++){
        arr.push(i * i - i + 1);
    }
    let rem1 = 0, rem2 = 0, rem3 = 0;
    for(let i = 0;i < n;i++){
        if(arr[i] % 3 == 1) rem1++;
        if(arr[i] % 3 == 2) rem2++;
        if(arr[i] % 3 == 0) rem3++;
    }
    count = count + rem3 * (rem3-1) * (rem3-2) / 6;
    count = count + rem1 * (rem1-1) / 2 * rem2;
    count = count + rem2 * (rem2-1) / 2 * rem1;
    return count;
}

console.log(get_max_triples(5));


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
