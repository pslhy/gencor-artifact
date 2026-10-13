function count_Substrings(s: string): number {
    const digits = Array.from(s).map(c => Number(c));
    let count = 0;
    for (let i = 1; i <= digits.length; i++) {
        const substr = digits.slice(0, i);
        const sum = substr.reduce((a, b) => a + b);
        if (sum === substr.length) {
            count++;
        }
    }
    return count;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to count the number of substrings with the sum of digits equal to their length.
