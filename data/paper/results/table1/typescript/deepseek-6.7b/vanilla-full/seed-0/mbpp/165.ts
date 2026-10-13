function count_char_position(str1: string): number {
    const alphabet = 'abcdefghijklmnopqrstuvwxyz';
    let count = 0;

    // converting the string to lowercase and split into array
    const str_arr = str1.toLowerCase().split('');

    for (let i = 0; i < str_arr.length; i++) {
        if (str_arr[i] === alphabet[i]) {
            count++;
        }
    }
    return count;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to count the number of characters in a string that occur at the same position in the string as in the English alphabet (case insensitive).
