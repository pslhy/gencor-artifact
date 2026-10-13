function find_adverb_position(text: string): [number, number, string] {
    const adverbs = ["quickly", "carefully", "gracefully", "tremendously", "wonderfully"];
    const words = text.split(" ");

    for (let i = 0; i < words.length; i++) {
        if (adverbs.includes(words[i].toLowerCase())) {
            return [i, words[i], text.substring(0, i).lastIndexOf(" ") + 1, text.indexOf(" ", i + 1)]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the first adverb and their positions in a given sentence.