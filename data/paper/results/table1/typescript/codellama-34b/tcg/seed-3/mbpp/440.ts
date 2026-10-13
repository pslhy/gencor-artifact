function find_adverb_position(text: string): [number, number, string] {
  let pattern = /<([a-zA-Z]+)>/g;
  let match = pattern.exec(text);
  if (!match) {
    return [null, null, null]
  [null as number? [null as number? [null as string?
  match = pattern.exec(text.replace(/<\/i>


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the first adverb and their positions in a given sentence.