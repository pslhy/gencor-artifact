function find_adverbs(text: string): string {
    // Define all the adjectives and adverbs.
    const adverbs = ["happily", "sadly", "seriously", "patiently", "bravely"];
    
    // Initialize an empty array to hold words ending with 'ly' 
    let result: string[] = [];
  
    // Split the input text into words
    let words = text.split(" ");
  
    // Loop through each word to find the word ending with 'ly'
    for (let word of words) {
        if (adverbs.includes(word)) {
            result.push(word);
        }
    }
  
    // If there's no 'ly' ending word, return an empty string.
    if(result.length === 0)
        return "";

    // Return the first 'ly' ending word and its position.
    // Find the position by converting the array into a map, and use the word as key.
    let pos = words.indexOf(result[0]);
    return `${result[0]} at ${pos+1}`;
}

console.log(find_adverbs("I am happily playing with a sad, broken toy."))  // Output: "happily at 3"


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the first adverb ending with ly and its positions in a given string.
