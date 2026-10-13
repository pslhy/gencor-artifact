function file_name_check(file_name: string): string {
  const digits = '0123456789';
  const allowed_extensions = ['txt', 'exe', 'dll'];
  const matches = file_name.match(/\.([a-zA-Z]+$)/);
  if (matches && matches.length > 0) {
    const extension = matches[0]
      .slice(1)
      .toLowerCase();
    if (allowed_extensions.includes(extension)) {
      return 'Yes';
    }
  }
  return 'No';
}

file_name_check('example.txt'); // "Yes"
file_name_check('1example.dll'); // "No"


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
