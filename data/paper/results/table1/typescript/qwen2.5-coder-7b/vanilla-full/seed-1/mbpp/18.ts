function remove_dirty_chars(string: string, second_string: string): string { 
    let result: string = ""; 

    for (let i = 0; i < string.length; i++) { 
        let found = false; 
        for (let j = 0; j < second_string.length; j++) { 
            if (string[i] === second_string[j]) { 
                found = true; 
                break; 
            } 
        } 
        if (!found) { 
            result += string[i]; 
        } 
    } 
    return result; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove characters from the first string which are present in the second string.
