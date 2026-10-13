function start_withp(words: string[]): [string, string] {
    let firstP: string | undefined = words.find(word => word.toLowerCase().startsWith('p'));
    if (!firstP) throw new Error('No word starts with "p"');
    words = words.slice(words.indexOf(firstP) + 1);
    let secondP: string | undefined = words.find(word => word.toLowerCase().startsWith('p'));
    if (!secondP) throw new Error('No second word starts with "p"');  
    return [firstP, secondP];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to return two words from an array of words starting with letter 'p'.
