function file_name_check(file_name: string): string {
    // Check conditions
    if (file_name.match(/[g-zG-Z]{1}.\w+\.{1}/) && 
        file_name.split('.').length == 2 && 
        (file_name.match(/[0-9]{1,3}/g) || []).length <= 1 && 
        ['txt', 'exe', 'dll'].includes(file_name.split('.')[1])) {
        return 'Yes';
    } else {
        return 'No';
    }
}
console.log(file_name_check("example.txt"));  // Yes
console.log(file_name_check("1example.dll")); // No


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
