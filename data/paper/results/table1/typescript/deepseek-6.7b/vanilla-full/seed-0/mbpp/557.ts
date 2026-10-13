function toggle_string(string: string): string {
    let result = '';
    for(let i = 0; i < string.length; i++) {
        let charCode = string.charCodeAt(i);

        if(charCode >= 65 && charCode <= 90)
            result += String.fromCharCode(charCode + 32);
        else if(charCode >= 97 && charCode <= 122)
            result += String.fromCharCode(charCode - 32);
        else
            result += string.charAt(i);
    }
    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to toggle the case of all characters in a string.
