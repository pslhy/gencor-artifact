function first_non_repeating_character(str1: string): string | undefined {
    let charCount = new Map<string, number>();
    for (let ch of str1) {
        charCount.set(ch, (charCount.get(ch) || 0) + 1);
    }
    for (let ch of str1) {
        if (charCount.get(ch) === 1) {
            return ch;
        }
    }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the first non-repeated character in a given string.
