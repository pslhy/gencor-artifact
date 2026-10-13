function extract_quotation(text1: string): any[] {  
    let result: string[] = [];
    let insideQuotes = false;
    let temp = "";

    for (let i = 0; i < text1.length; i++) {
        if (text1[i] === '"') {
            if (insideQuotes) {
                result.push(temp);
                temp = "";
            }
            insideQuotes = !insideQuotes;
        } else if (insideQuotes) {
            temp += text1[i];
        }
    }

    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to extract values between quotation marks " " of the given string.
