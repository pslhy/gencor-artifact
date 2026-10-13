function count_char_position(str1: string): number {
    let count: number = 0;
    let chars: string[] = str1.toLowerCase().split('');
  
    for(let i=0; i<chars.length; i++){
        if (chars[i] == 'a' || chars[i] == 'e' || chars[i] == 'i'
            || chars[i] == 'o' || chars[i] == 'u') count++;
    }

    return count;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to count the number of characters in a string that occur at the same position in the string as in the English alphabet (case insensitive).
