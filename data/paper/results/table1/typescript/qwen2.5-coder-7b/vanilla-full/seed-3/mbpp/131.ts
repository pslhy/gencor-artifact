function reverse_vowels(str1: string): string {  
    let traversal_arr1 = str1.split('');    
    let pattern1 = /[aeiou]/i;
    let vowel_arr1: string[] = traversal_arr1.filter(element => pattern1.test(element));    
    let result_str = traversal_arr1.map(element => {
        if(pattern1.test(element)){
            return vowel_arr1.pop();
        }else{
            return element;
        }
    });
    return result_str.join('');
}
console.log(reverse_vowels("test"));


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to reverse only the vowels of a given string (where y is not a vowel).
