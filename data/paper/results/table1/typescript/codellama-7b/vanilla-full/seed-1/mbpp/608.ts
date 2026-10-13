function bell_Number(n: number): number {
    let result = 0;

    for (let i = 0; i < n; i++) {
        result += combinations(i + 1, 2);
    }

    return result;
}

function combinations(n: number, r: number): number {
    if (r === 0 || n === r) {
        return 1;
    }

    if (r === 1 || n === 1) {
        return n;
    }

    return combinations(n - 1, r - 1) + combinations(n - 1, r);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find nth bell number.
