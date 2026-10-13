function reverse_vowels(str1: string): string { 
    let str2 = str1.split('');
    let i = 0, j = str2.length - 1;
    const vowels = 'aeiouAEIOU';

    while (i < j) {
        if (!vowels.includes(str2[i])) {
            i++;
        } else if (!vowels.includes(str2[j])) {
            j--;
        } else {
            [str2[i], str2[j]] = [str2[j], str2[i]];
            i++;
            j--;
        }
    }
    return str2.join('');
}

// Example usage:
console.log(reverse_vowels("hello")); // Output: "holle"
console.log(reverse_vowels("programming")); // Output: "prigrammong"


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to reverse only the vowels of a given string (where y is not a vowel).
