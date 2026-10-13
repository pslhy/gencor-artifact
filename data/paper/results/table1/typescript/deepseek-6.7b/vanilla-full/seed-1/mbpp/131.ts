function reverse_vowels(str1: string): string {
    let vowel_list: string[] = [];
    let vowel_dict: any = {'a': True, 'e': True, 'i': True, 'o': True, 'u': True};
    let result: string[] = [];

    for char in str1:
        if char.toLowerCase() in vowel_dict:
            vowel_list.push(char);

    for char in str1:
        if char.toLowerCase() in vowel_dict:
            result.push(vowel_list.pop());
        else:
            result.push(char);

    return result.join('');
}

console.log(reverse_vowels("hello"));


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to reverse only the vowels of a given string (where y is not a vowel).
