function find_max(words: string[]): string {
    let maxCount = 0;
    let maxWord = "";
    words.forEach(word => {
        const uniqChars = new Set(word.split("")).size;
        if (uniqChars > maxCount) {
            maxCount = uniqChars;
            maxWord = word;
        } else if (uniqChars === maxCount && word < maxWord) {
            maxWord = word;
        }
    });
    return maxWord;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that accepts an array of strings.
//     The array contains different words. Return the word with maximum number
//     of unique characters. If multiple strings have maximum number of unique
//     characters, return the one which comes first in lexicographical order.
//     >>> find_max(["name", "of", "string"])
//     "string"
//     >>> find_max(["name", "enam", "game"])
//     "enam"
//     >>> find_max(["aaaaaaa", "bb", "cc"])
//     "aaaaaaa"
