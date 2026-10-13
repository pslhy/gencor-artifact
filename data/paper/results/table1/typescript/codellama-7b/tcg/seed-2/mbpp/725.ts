function extract_quotation(text1: string): any[] {
    let outputarray = [];
    let text2 = " " + text1 + " ";
    let indexes = text2.match(/".*?"/gm)!;
    for (let i = 0; i < indexes.length; i++) {
        let word = indexes[i].substring(1, indexes[i].length - 1);
        outputarray.push(word);
    }
    return outputarray;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to extract values between quotation marks " " of the given string.