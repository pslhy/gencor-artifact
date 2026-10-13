function remove_odd(str1: string): string {
    const filtered = Array.from(str1).filter((_, i) => i % 2 === 0)
    return filtered.join('');
}

console.log(remove_odd("my 'name' is: S_ohn")); // my name is: _ohn


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove odd characters in a string.
