function remove_dirty_chars(string: string, second_string: string): string {
  const filtered_string: string = new Array<char>();

  for (let i: int = 0; i < string.length; i++) {
    const char: char = string[i];

    if (!second_string.includes(char)) {
      filtered_string.push(char);
    }
  }

  return filtered_string.join('');
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove characters from the first string which are present in the second string.
