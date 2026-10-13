function extract_quotation(text1: string): any[] {
    let outputarray = text1.split('"');
    if(outputarray.length === 0){
        return null
    }else {
        let outputarray1 = []
        for (let i in outputarray){
            let outputarray1.push(inputarray)
        }
        return outputarray1;
    }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to extract values between quotation marks " " of the given string.
