function Find_Max(lst: any[][]): any[] {
    let maxLen: number = 0;
    let maxElement: any[] = [];
  
    for(let element of lst) {
        if(element.length > maxLen) {
            maxLen = element.length;
            maxElement = element;
        }
    }
  
    return maxElement;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the element of an array having maximum length.
