function count_char_position(str1: string): number {
    let count = 0;
    const alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", 
                      "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", 
                      "y", "z"];
    const lowerCaseStr = str1.toLowerCase();
    for(let i = 0; i < str1.length; i++){
        if(str1[i] === alphabet[i])
        count ++;
    }
    return count;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to count the number of characters in a string that occur at the same position in the string as in the English alphabet (case insensitive).
