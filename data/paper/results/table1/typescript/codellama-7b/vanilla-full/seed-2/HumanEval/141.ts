function file_name_check(file_name: string): string {
    let num_digits = 0;
    for (const char of file_name) {
        if (char >= '0' && char <= '9') {
            num_digits++;
            if (num_digits > 3) {
                return "No";
            }
        }
    }
    if (num_digits === 0 || num_digits > 1) {
        return "No";
    }
    const parts = file_name.split(".");
    if (parts.length !== 2) {
        return "No";
    }
    const extension = parts[1];
    if (!["txt", "exe", "dll"].includes(extension)) {
        return "No";
    }
    const basename = parts[0];
    if (basename.length === 0 || !(basename[0] >= 'a' && basename[0] <= 'z') &&
        !(basename[0] >= 'A' && basename[0] <= 'Z')) {
        return "No";
    }
    return "Yes";
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
