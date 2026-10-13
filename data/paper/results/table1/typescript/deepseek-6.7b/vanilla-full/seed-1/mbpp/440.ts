function find_adverb_position(text: string): [number, number, string] {
    // Define a list of English adverbs
    let adverbs = ['very', 'told', 'often', 'just', 'here', 'front', 'often', 
                  'hardly', 'nowhere', 'enough', 'besides', 'well', 'wherever', 
                  'besides', 'well', 'wherever', 'just'];
    let words = text.split(' ');
    for (let i = 0; i < words.length; i++) {
        let word = words[i].toLowerCase();
        if (adverbs.indexOf(word) > -1){
            return [i + 1, i + 2, word];
        }
    }
    return [-1, -1, ""];
}

let text = "She read the book well.";
let [start, end, adverb] = find_adverb_position(text);

if (start != -1) {
    console.log(`The adverb "${adverb}" is found at the position ${start}-${end}.`);
} else {
    console.log(`No adverb found in the text.`);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the first adverb and their positions in a given sentence.
