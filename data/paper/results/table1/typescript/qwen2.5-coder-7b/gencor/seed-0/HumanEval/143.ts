
function words_in_sentence(sentence: string): string { 
    function isPrime(num: number): boolean {
        if (num <= 1) return false;
        if (num <= 3) return true;
        if (num % 2 === 0 || num % 3 === 0) return false;
        for (let i = 5; i * i <= num; i += 6) {
            if (num % i === 0 || num % (i + 2) === 0) return false;
        }
        return true;
    }
    
    return sentence.split(" ").filter(word => isPrime(word.length)).join(" ");
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     You are given a string representing a sentence,
//     the sentence contains some words separated by a space,
//     and you have to return a string that contains the words from the original sentence,
//     whose lengths are prime numbers,
//     the order of the words in the new string should be the same as the original one.
//     Example 1:
//     >>> words_in_sentence("This is a test")
//     "is"
//     Example 2:
//     >>> words_in_sentence("lets go for swimming")
//     "go for"
//     Constraints:
//     * 1 <= len(sentence) <= 100
//     * sentence contains only letters
