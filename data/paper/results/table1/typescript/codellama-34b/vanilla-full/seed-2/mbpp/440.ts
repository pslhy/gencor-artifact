function find_adverb_position(text: string): [number, number, string] {
    let adverb = text.split(" ").filter(word => word.endsWith("ly"))[0];
    let start_position = text.indexOf(adverb);
    let end_position = start_position + adverb.length;
    return [start_position, end_position, adverb];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the first adverb and their positions in a given sentence.
