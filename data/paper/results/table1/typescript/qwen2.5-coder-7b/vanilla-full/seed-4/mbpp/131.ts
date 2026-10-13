function reverse_vowels(str1: string): string { 
    let chars = str1.split(''); 
    let left = 0; 
    let right = str1.length - 1;  
    let vowels = new Set(['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']); 

    while (left < right) {
        while (left < right && !vowels.has(chars[left])) {
            left++;
        }
        while (left < right && !vowels.has(chars[right])) {
            right--;
        }
        if (left < right) {
            let temp = chars[left];
            chars[left] = chars[right];
            chars[right] = temp;
            left++;
            right--;
        }
    } 

    return chars.join(''); 
}

console.log(reverse_vowels('DEVELOPMENT')); // Output: 'DDEVOLPMT'
console.log(reverse_vowels('Rhythm')); // Output: 'Rhythm'
console.log(reverse_vowels('JavaScript')); // Output: 'JAVAsCRIPT'


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to reverse only the vowels of a given string (where y is not a vowel).
