function find_adverb_position(text: string): [number, number, string] {
    const pattern = /\b((?:(?:never)|(?:always)|(?:often)|(?:usually)|(?:every)|(?:seldom)|(?:now))\b)/ig;
    let match = pattern.exec(text);
    if(match){
        return [match.index, match.index + match[0].length, match[0]];
    }
    return [-1, -1, ''];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the first adverb and their positions in a given sentence.
