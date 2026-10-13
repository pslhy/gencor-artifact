function first_non_repeating_character(str1: string): string | undefined {  
    let charMap: { [key: string]: number } = {};

    // Count the occurrences of each character
    for (let char of str1) {
        if (charMap[char]) {
            charMap[char]++;
        } else {
            charMap[char] = 1;
        }
    }

    // Find the first non-repeated character
    for (let char of str1) {
        if (charMap[char] === 1) {
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
