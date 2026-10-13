function is_samepatterns(colors: string[], patterns: string[]): boolean {
    const colorPatterns: Record<string, string> = {
        "blue": "00",
        "red": "01",
        "green": "10",
        "violet": "11"
    };
    let colorSequence = [];
    for (let i = 0; i < colors.length; i++) {
        colorSequence.push(colorPatterns[colors[i]]);
    }
    return colorSequence.join("") === patterns.join("");
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check whether it follows the sequence given in the patterns array.
