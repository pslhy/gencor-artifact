function first_non_repeating_character(str1: string): string | undefined {
    let count: { [index: string]: number } = {};
    let index: { [index: string]: number } = {};

    for (let i = 0; i < str1.length; i++) {
        if (count[str1[i]]) {
            count[str1[i]]++;
        } else {
            count[str1[i]] = 1;
            index[str1[i]] = i;
        }
    }

    let minIndex = Infinity;
    let minChar = undefined;

    for (let char in count) {
        if (count[char] === 1 && index[char] < minIndex) {
            minIndex = index[char];
            minChar = char;
        }
    }

    return minChar;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the first non-repeated character in a given string.
