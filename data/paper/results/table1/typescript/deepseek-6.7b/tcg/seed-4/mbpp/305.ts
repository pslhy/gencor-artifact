function start_withp(words: string[]): [string, string] {
    let p1 = words.find((word) => word.startsWith('p'))!!='undefined' || "nothing found"
    words = words.filter((word) => word !== p1)
    let p2 = words.find((word) => word.startsWith('p'))!!='undefined' || "nothing found"
    return [p1, p2]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to return two words from an array of words starting with letter 'p'.