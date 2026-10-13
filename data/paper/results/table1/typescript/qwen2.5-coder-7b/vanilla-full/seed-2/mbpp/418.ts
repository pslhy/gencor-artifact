function Find_Max(lst: any[][]): any[] { 
    let maxLen = 0; 
    let maxLengthElement: any[] = [];

    for (let i = 0; i < lst.length; i++) { 
        if (lst[i].length > maxLen) {
            maxLen = lst[i].length;
            maxLengthElement = lst[i];
        }
    }

    return maxLengthElement; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the element of an array having maximum length.
