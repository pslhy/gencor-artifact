function count_vowels(test_str: string): number { 
    // Regular expression to find characters with vowels as neighbors
    let regex = /(?=[aeiouAEIOU]([^aeiouAEIOU]|\b))(?<=([aeiouAEIOU]([^aeiouAEIOU]|\b)))/g;
    let res = test_str.match(regex);
    // Return the count of matching characters or 0 if none are found
    return res ? res.length : 0;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to count those characters which have vowels as their neighbors in the given string.
