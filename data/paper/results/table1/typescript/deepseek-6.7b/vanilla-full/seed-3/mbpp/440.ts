function find_adverb_position(text: string): [number, number, string] {
    const adverbs = ['very', 'just', 'here', 'now', 'only'];
    let lowerCaseText = text.toLowerCase();
    
    for (let i = 0; i < adverbs.length; i++) {
        let position = lowerCaseText.indexOf(adverbs[i]);
        if (position !== -1) {
            return [i, position, adverbs[i]];
        }
    }
    
    return [-1, -1, ''];
}

let result = find_adverb_position("It is very hot today");
console.log(result);


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the first adverb and their positions in a given sentence.
