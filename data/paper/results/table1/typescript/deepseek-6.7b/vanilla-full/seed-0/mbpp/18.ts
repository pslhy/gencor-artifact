function remove_dirty_chars(string: string, second_string: string): string {
    for (let i = 0; i < second_string.length; i++) {
        while (true) {
            let index = string.indexOf(second_string[i]);
            if (index !== -1) {
                string = string.substring(0, index) + string.substring(index + 1);
            } else {
                break;
            }
        }
    }
    return string;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove characters from the first string which are present in the second string.
