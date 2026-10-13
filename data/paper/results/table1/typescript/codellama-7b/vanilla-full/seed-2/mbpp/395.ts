function first_non_repeating_character(str1: string): string | undefined {
    let seen = new Set<string>();
    for (let i = 0; i < str1.length; i++) {
        let char = str1[i];
        if (!seen.has(char)) {
            seen.add(char);
        } else {
            seen.delete(char);
        }
    }

    for (let i = 0; i < str1.length; i++) {
        let char = str1[i];
        if (!seen.has(char)) {
            return char;
        }
    }

    return undefined;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the first non-repeated character in a given string.
