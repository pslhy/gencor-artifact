function eulerian_num(n: number, m: number): number {
    let result = 0;
    for (let k = 1; k <= n; k++) {
        let binomial_coeff = get_binomial_coeff(n, k);
        let m_to_k = Math.pow(m, k);
        let a_k = binomial_coeff * m_to_k;
        result += a_k;
    }
    return result;
}

function get_binomial_coeff(n: number, k: number): number {
    if (k === 0 || k === n) {
        return 1;
    }
    return get_binomial_coeff(n - 1, k - 1) + get_binomial_coeff(n - 1, k);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the Eulerian number a(n, m).
