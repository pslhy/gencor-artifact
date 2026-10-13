function reverse_vowels(str1: string): string {
    let vowels = ['a', 'e', 'i', 'o', 'u'];
    let i = 0, j = str1.length - 1;
    let str1Arr = str1.split("");
    while (i < j) {
        if (!vowels.includes(str1Arr[i].toLowerCase())) {
            i++;
            continue;
        }
        if (!vowels.includes(str1Arr[j].toLowerCase())) {
            j--;
            continue;
        }
        let temp = str1Arr[i];
        str1Arr[i] = str1Arr[j];
        str1Arr[j] = temp;
        i++;
        j--;
    }
    return str1Arr.join("");
}
console.log(reverse_vowels("Hello")); //Expected output "Holle"


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to reverse only the vowels of a given string (where y is not a vowel).
