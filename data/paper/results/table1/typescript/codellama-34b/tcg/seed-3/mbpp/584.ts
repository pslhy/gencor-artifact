function find_adverbs(text: string): string {
  let pattern = /[a-zA-Z]+ly/g;
  let matches = text.match(pattern)!!=[];
  let adverbs = [];
  for (const match of matches || [']) {  // For each adverb: �����    adverbs.push(match);                // Save the adverb ����  in a list ����  .  November �����  }                                     // adverbs contains list of first occurrences ����  adverb that ends with ly  .  November ���� ���� the ���� .  November ���� �����  if(adverbs.length === 0) return "";     // ����  No adverb ends ����  with ���� ly  .  November �����  let firstAdverb = adverbs[0];        // ����  Get the first adverb ����  that ends with ���� ly  .  November �����  let firstAdverbPosition = text.indexOf(firstAdverb);  // ����  Get the position of ����  the ���� first adverb ����  that ends with ���� ly  .  November �����  return `First adverb: "${firstAdverb}" at position ${firstAdverbPosition}`;  // ����  Return the result in the specified format. �����}                                     //   �����


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the first adverb ending with ly and its positions in a given string.