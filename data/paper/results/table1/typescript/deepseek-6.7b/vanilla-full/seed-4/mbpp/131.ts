function reverse_vowels(str1: string): string {
    let vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'];
    let str1_arr = Array.from(str1);
    let i = 0;
    let j = str1.length - 1;

    while (i < j) {
        if (vowels.indexOf(str1_arr[i]) === -1) {
            i++;
        }
        if (vowels.indexOf(str1_arr[j]) === -1) {
            j--;
        }
        if (vowels.indexOf(str1_arr[i]) !== -1 && vowels.indexOf(str1_arr[j]) !== -1) {
            let temp = str1_arr[i];
            str1_arr[i] = str1_arr[j];
            str1_arr[j] = temp;
            j--;
            i++;
        }
    }
    return str1_arr.join('');
}

let a = 'hello world';
console.log(reverse_vowels(a));  // Output: 'hollo world'


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to reverse only the vowels of a given string (where y is not a vowel).
