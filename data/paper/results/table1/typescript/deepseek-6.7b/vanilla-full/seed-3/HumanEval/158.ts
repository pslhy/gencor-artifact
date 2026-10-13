function find_max(words: string[]): string {
    let maxUniqueChars = 0;
    let result = "";

    for (let word of words) {
        if (getUniqueChars(word) > maxUniqueChars) {
            maxUniqueChars = getUniqueChars(word);
            result = word;
        } else if (getUniqueChars(word) === maxUniqueChars) {
            if (word < result) {
                result = word;
            }
        }
    }

    return result;
}

function getUniqueChars(word: string): number {
    let count = 0;
    let charMap = {};

    for (let char of word) {
        if (!charMap[char]) {
            charMap[char] = true;
            count++;
        }
    }

    return count;
}

console.log(find_max(["name", "of", "string"]));  // "string"
console.log(find_max(["name", "enam", "game"]));  // "enam"
console.log(find_max(["aaaaaaa", "bb", "cc"]));  // "aaaaaaa"


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
