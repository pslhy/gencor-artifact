function count_Substrings(s: string): number {
    let count = 0;
    for (let i = 0; i < s.length; i++) {
        const substr = s.substring(i);
        const sum = substr.split('').reduce((a, b) => a + parseInt(b), 0);
        if (sum === substr.length) count++;
    }
    return count;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to count the number of substrings with the sum of digits equal to their length.
