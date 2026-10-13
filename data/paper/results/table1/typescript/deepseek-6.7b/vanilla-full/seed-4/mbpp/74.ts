function is_samepatterns(colors: string[], patterns: string[]): boolean {
    let map: { [index: string]: string } = {};
    let hasSeen: { [index: string]: boolean } = {};

    for (let i = 0; i < colors.length; i++) {
        let color: string = colors[i];
        let pattern: string = patterns[i];

        if (pattern in map) {
            if (map[pattern] !== color) {
                return false;
            }
        } else if (color in hasSeen) {
            return false;
        } else {
            map[pattern] = color;
            hasSeen[color] = true;
        }
    }

    return true;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check whether it follows the sequence given in the patterns array.
