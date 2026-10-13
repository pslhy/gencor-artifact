function reverse_vowels(str1: string): string { 
    let str2 = str1.split(''); 
    let vowel = ''; 
  
    for(let i = 0; i < str2.length; i++) { 
        if (str2[i] == 'a' || str2[i] == 'e' || str2[i] == 'i' || str2[i] == 'o' || str2[i] == 'u' ||
            str2[i] == 'A' || str2[i] == 'E' || str2[i] == 'I' || str2[i] == 'O' || str2[i] == 'U') { 
            vowel = vowel + str2[i]; 
        } 
    } 
  
    let j = vowel.length - 1; 
    for(let i = 0; i < str2.length; i++) { 
        if (str2[i] == 'a' || str2[i] == 'e' || str2[i] == 'i' || str2[i] == 'o' || str2[i] == 'u' ||
            str2[i] == 'A' || str2[i] == 'E' || str2[i] == 'I' || str2[i] == 'O' || str2[i] == 'U') { 
            str2[i] = vowel.charAt(j); 
            j--; 
        } 
    } 
    return str2.join(''); 
} 

console.log(reverse_vowels("Hello World")); 


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to reverse only the vowels of a given string (where y is not a vowel).
