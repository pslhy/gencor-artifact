function count_Substrings(s: string): number {
    let sum = 0;
    let length = s.length;

    for (let i = 0; i < length; i++) {
        if (s[i].match(/[0-9]/)) {
            let num = parseInt(s[i]);
            let substr = s.slice(i + 1);
            for (let j = 1; j <= substr.length; j++) {
                if (j * num === j) {
                    sum++;
                }
            }
        }
    }

    return sum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to count the number of substrings with the sum of digits equal to their length.
