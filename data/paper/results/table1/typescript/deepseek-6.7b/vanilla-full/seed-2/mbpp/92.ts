function is_undulating(n: number): boolean {
    const digits = n.toString().split('');
    return (
        digits.length >= 3 &&
        digits.every((d, i, a) => i % 2 === 0 ? d === a[i + 1] : d !== a[i + 1])
    );
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check whether the given number is undulating or not.
