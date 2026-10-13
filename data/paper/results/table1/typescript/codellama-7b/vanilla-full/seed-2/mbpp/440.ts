function find_adverb_position(text: string): [number, number, string] {
    let adverb: string | undefined = undefined;
    let start: number = 0;
    let end: number = 0;

    for (let i = 0; i < text.length; i++) {
        let word = text.split(" ")[i];

        if (["very", "not", "also", "really"].includes(word)) {
            adverb = word;
            start = i;
            end = i;
        }

        if (["so", "also", "very", "not", "almost", "very", "really"].includes(word)) {
            adverb = word;
            start = i;
            end = i;
        }
    }

    return [start, end, adverb];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the first adverb and their positions in a given sentence.
