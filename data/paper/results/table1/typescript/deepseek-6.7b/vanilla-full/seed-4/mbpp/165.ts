function count_char_position(str1: string): number {
    let count: number = 0;
    const alphabet = 'abcdefghijklmnopqrstuvwxyz';
    str1 = str1.toLowerCase();

    for(let i = 0;i<str1.length;i++){
        if(str1[i]===alphabet[i]) {
            count++;
        }
    }
    return count;
}

console.log(count_char_position("Hello")); // 2
console.log(count_char_position("Programming")); // 0
console.log(count_char_position("Abcde")); // 5


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to count the number of characters in a string that occur at the same position in the string as in the English alphabet (case insensitive).
