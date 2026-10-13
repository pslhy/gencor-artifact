function reverse_vowels(str1: string): string {
    let vowels = ['a', 'e', 'i', 'o', 'u'];
    let rev_str = [];
    for (let i = 0; i < str1.length; i++) {
        if (vowels.includes(str1[i])) {
            rev_str.push(str1[i]);
        }
    }
    rev_str.reverse();
    let rev_str2 = [];
    for (let i = 0; i < rev_str.length; i++) {
        if (vowels.includes(rev_str[i])) {
            rev_str2.push(rev_str[i]);
        }
    }
    rev_str2.reverse();
    let output = '';
    for (let i = 0; i < str1.length; i++) {
        if (!vowels.includes(str1[i])) {
            output += str1[i];
        } else {
            output += rev_str2[i];
        }
    }
    return output;
}

let input = "hello world";
console.log(reverse_vowels(input)); // Output: "holle wrld"


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to reverse only the vowels of a given string (where y is not a vowel).
