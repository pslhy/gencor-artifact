
function find_adverbs(text: string): string {
  let adverbs: string[] = [];
  let positions: number[] = [];
  for (let i = 0; i < text.length; i++) {
    if (text[i].endsWith("ly") && [i - 1].match(/\s/m)
    [i - 2].endsWith(["t", "re", "m", "ve", "d", "n"][text[i - 3]
   ].include(adverbs.push(`${text[i - 2]} ${text[i]}`
   ))
    (positions.push(i - 2)
    )
 

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the first adverb ending with ly and its positions in a given string.
