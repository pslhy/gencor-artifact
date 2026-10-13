function reverse_vowels(str1: string): string {
    let vowel_list: string[] = [];
    let vowel_dict: any = 'aeiouAEIOU';
    let final_str: string = '';

    for (let i=0; i<str1.length; i++)  {
        if (str1[i]  && (vowel_dict).  hasOwnProperty(str1[i])) {
            vowel_list.push(str1[i]);
        }
    }

    vowel_list.reverse();

    let vowel_cursor: number = 0;
    for (let i=0; i<str1.length; i++)  {
        if (str1[i]  && (vowel_dict).  hasOwnProperty(str1[i])) {
            final_str += vowel_list[vowel_cursor];
            vowel_cursor += 1;
        }
        else  {
            final_str += str1[i];
        }
    }

    return final_str;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to reverse only the vowels of a given string (where y is not a vowel).