function find_adverb_position(text: string): [number, number, string] { 
    // Regular expression to find words ending in -ly
    const adverbRegex = /(\b\w+ly\b)/g;  
    let match: RegExp | null;
    // Loop through all matches
    while ((match = adverbRegex.exec(text.toLowerCase()) !== null as RegExp | null  && match !== null && match !== undefined && match !== false  
    	.


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the first adverb and their positions in a given sentence.