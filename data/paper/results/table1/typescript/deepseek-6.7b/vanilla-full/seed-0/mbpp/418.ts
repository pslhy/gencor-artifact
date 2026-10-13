function Find_Max(lst: any[][]): any[] {
    let max = lst[0].length;
    let result = lst[0];
    
    lst.forEach((arr) => {
        if(arr.length > max) {
            max = arr.length;
            result = arr;
        }
    });

    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the element of an array having maximum length.
