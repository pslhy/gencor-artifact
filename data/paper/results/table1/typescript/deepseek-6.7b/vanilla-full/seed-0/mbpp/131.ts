function reverse_vowels(str1: string): string {
    const vowels = new Set('aeiouAEIOU');
    let chars = Array.from(str1);

    let left = 0, right = str1.length - 1;

    while (left < right) {
        if (!vowels.has(chars[left])) {
            left++;
            continue;
        }
        if (!vowels.has(chars[right])) {
            right--;
            continue;
        }
        [chars[left], chars[right]] = [chars[right], chars[left]];
        left++;
        right--;
    }
    return chars.join('');
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to reverse only the vowels of a given string (where y is not a vowel).
