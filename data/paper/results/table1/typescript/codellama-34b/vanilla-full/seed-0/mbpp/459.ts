function remove_uppercase(str1: string): string {
    const uppercase_regex = /[^A-Z]/;
    const substrings: string[] = [];
    let match: RegExpMatchArray | null;
    while ((match = uppercase_regex.exec(str1)) != null) {
        substrings.push(match[0]);
    }
    return substrings.join("");
}

const str = "Hello World";
console.log(remove_uppercase(str)); // " "


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove uppercase substrings from a given string.
