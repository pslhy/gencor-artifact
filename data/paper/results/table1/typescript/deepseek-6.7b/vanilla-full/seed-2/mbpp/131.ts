function reverse_vowels(str1: string): string {
    let arr = Array.from(str1);
    let i = 0;
    let j = str1.length - 1;
    let vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'];
    
    while(i < j) {
        if(!vowels.includes(arr[i])) {
            i++;
            continue;
        }
        if(!vowels.includes(arr[j])) {
            j--;
            continue;
        }
        [arr[i], arr[j]] = [arr[j], arr[i]];
        i++;
        j--;
    }
    return arr.join('');
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to reverse only the vowels of a given string (where y is not a vowel).
