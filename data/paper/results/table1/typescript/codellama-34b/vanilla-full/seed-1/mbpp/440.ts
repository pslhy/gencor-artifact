function find_adverb_position(text: string): [number, number, string] {
    const adverbs = ["very", "really"]
    let matches = [0, 0, ""]
    for (let i = 0; i < adverbs.length; i++) {
        const index = text.indexOf(adverbs[i])
        if (index > -1 && (index < matches[0] || matches[0] === 0)) {
            matches = [index, index, adverbs[i]]
        }
    }
    return matches
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the first adverb and their positions in a given sentence.
