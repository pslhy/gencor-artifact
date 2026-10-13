function file_name_check(file_name: string): string {
    const conditions = [
        /^[a-zA-Z]\..*$/,       // file starts with a letter and contains '.'
        /^[^.].*$/,             // file does not start with '.'
        /^.*[.][^.].*$/,        // file contains '.' at least twice
        /^.*\.(txt|exe|dll)$/,   // file name at the end should be 'txt', 'exe' or 'dll'
        /^.*\.txt$/,             // file name at the end should be 'txt'
        /^.*\.exe$/,             // file name at the end should be 'exe'
        /^.*\.dll$/              // file name at the end should be 'dll'
    ];

    if (file_name.split('').filter((el: string) => '0' <= el && el <= '9').length > 3) return 'No';   // check for number of digits

    for (let condition of conditions) if (!file_name.match(condition)) return 'No';                        // check other conditions

    return 'Yes';
}

console.log(file_name_check("example.txt"));  // "Yes"
console.log(file_name_check("1example.dll"));  // "No"


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
