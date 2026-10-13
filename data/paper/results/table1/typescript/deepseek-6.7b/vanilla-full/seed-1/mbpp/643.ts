function text_match_wordz_middle(text: string): boolean {
    // split the text into words
    let words = text.split(' ');
    
    for (let word of words) {
        // check if word contains 'z' except at start and end
        if (word.length > 2 && word.includes('z') && word[0] !== 'z' && word[word.length-1] !== 'z') {
            // if so, return true
            return true;
        }
    }
    // if no such word is found, return false
    return false;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that checks if a strings contains 'z', except at the start and end of the word.
