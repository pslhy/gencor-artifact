
function file_name_check(file_name: string): string { 
    const validExtensions = ['txt', 'exe', 'dll'];
    const parts = file_name.split('.');
    
    if (parts.length !== 2) return 'No';
    const namePart = parts[0];
    const extensionPart = parts[1];
    
    if (!namePart || !/^[a-zA-Z]/.test(namePart) || !validExtensions.includes(extensionPart)) return 'No';
    const digitCount = (namePart.match(/\d/g) || []).length;
    
    return digitCount <= 3 ? 'Yes' : 'No';
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Create a function which takes a string representing a file's name, and returns
//     'Yes' if the the file's name is valid, and returns 'No' otherwise.
//     A file's name is considered to be valid if and only if all the following conditions
//     are met:
//     - There should not be more than three digits ('0'-'9') in the file's name.
//     - The file's name contains exactly one dot '.'
//     - The substring before the dot should not be empty, and it starts with a letter from
//     the latin alphapet ('a'-'z' and 'A'-'Z').
//     - The substring after the dot should be one of these: ['txt', 'exe', 'dll']
//     Examples:
//     >>> file_name_check("example.txt")
//     "Yes"
//     >>> file_name_check("1example.dll")
//     "No"
