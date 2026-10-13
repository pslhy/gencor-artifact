function is_undulating(n: number): boolean {
    const digits = n.toString().split('');
    if (digits.length < 3 || digits.length % 2 !== 0) {
        return false;
    }
    const first = digits[0];
    const second = digits[1];
    for (let i = 2; i < digits.length; i += 2) {
        if (digits[i] !== first || digits[i + 1] !== second) {
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
