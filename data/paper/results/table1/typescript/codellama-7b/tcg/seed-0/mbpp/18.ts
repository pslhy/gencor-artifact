function remove_dirty_chars(string: string, second_string: string): string {
  const filtered_string: string = new Array(string.length - second_string.length + 1).fill(null).map((_, i) =>
    string.charAt(i)
  ).filter((char) =>
    !second_string.includes(char)
  ).join('')
  if (filtered_string.length == 0)
    return ''
  else
    return filtered_string
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove characters from the first string which are present in the second string.