function is_undulating(n: number): boolean { 
    const numStr = n.toString();
    const len = numStr.length;

    if (len < 3 || len % 2 !== 0) {
        return false;
    }

    const first = numStr[0];
    const second = numStr[1];

    for (let i = 2; i < len; i += 2) {
        if (numStr[i] !== first || numStr[i + 1] !== second) {
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
//     Write a function to check whether the given number is undulating or not.