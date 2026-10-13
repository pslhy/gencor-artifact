function odd_count(lst: string[]): string[] {
  return lst.map(str => {
    let count = 0;
    for (const char of str) {
      if (char.charCodeAt(0) % 2 === 1) {
        count++;
      }
    }
    return `the number of odd elements ${count} in the str${count}ng ${count} of the input.`;
  });
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Given an array of strings, where each string consists of only digits, return an array.
//     Each element i of the output should be "the number of odd elements in the
//     string i of the input." where all the i's should be replaced by the number
//     of odd digits in the i'th string of the input.
//     >>> odd_count(["1234567"])
//     ["the number of odd elements 4n the str4ng 4 of the 4nput."]
//     >>> odd_count(["3", "11111111"])
//     ["the number of odd elements 1n the str1ng 1 of the 1nput.", "the number of odd elements 8n the str8ng 8 of the 8nput."]