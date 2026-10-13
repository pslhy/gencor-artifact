function split_words(txt: string): string[] | number {
    if (txt.includes(' ')) {
        return txt.split(' ');
    } else if (txt.includes(',')) {
        return txt.split(',');
    } else {
        return txt.split('').reduce((count, char) => {
            return char === char.toLowerCase() && char.charCodeAt(0) % 2 === 1 ? count + 1 : count;
        }, 0);
    }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Given a string of words, return an array of words split on whitespace, if no whitespaces exists in the text you
//     should split on commas ',' if no commas exists you should return the number of lower-case letters with odd order in the
//     alphabet, ord('a') = 0, ord('b') = 1, ... ord('z') = 25
//     Examples
//     >>> split_words("Hello world!")
//     ["Hello", "world!"]
//     >>> split_words("Hello,world!")
//     ["Hello", "world!"]
//     >>> split_words("abcdef")
//     3
