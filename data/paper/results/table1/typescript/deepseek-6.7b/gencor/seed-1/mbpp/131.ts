
function reverse_vowels(str1: string): string {
    let vowel_list: string[] = [];
    let vowel_dict: any = {'a': 1, 'e': 1, 'i': 1, 'o': 1, 'u': 1};
    
    for (let i = 0; i < str1.length; i++) {
        if (str1[i].toLowerCase()  && vowel_dict[str1[i].toLowerCase()]) {
            vowel_list.push(str1[i]);
        }
    }
    
    for (let i = 0; i < str1.length; i++) {
        if (str1[i].toLowerCase() && vowel_dict[str1[i].toLowerCase()]) {
            str1 = str1.slice(0, i) + vowel_list.pop() + str1.slice(i + 1);
        }
    }
    return str1;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to reverse only the vowels of a given string (where y is not a vowel).
