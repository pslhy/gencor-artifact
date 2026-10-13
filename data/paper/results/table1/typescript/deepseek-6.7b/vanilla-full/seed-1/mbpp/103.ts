function eulerian_num(n: number, m: number): number {
    let lookup: {[key: string]: number} = {};

    function _eulerian_num(n: number, m: number): number {
        const key = `${n},${m}`;
        if (lookup[key] !== undefined) {
            return lookup[key];
        }
        if (m === 0) {
            return 0;
        }
        if(n === 0) {
            return 2 ** m;
        }
        lookup[key] = (2 * _eulerian_num(n - 1, m - 1) + _eulerian_num(n, m - 1)) % (1e9 + 7);
        return lookup[key];
    }

    return _eulerian_num(n, m);
}

console.log(eulerian_num(3, 2));


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the Eulerian number a(n, m).
