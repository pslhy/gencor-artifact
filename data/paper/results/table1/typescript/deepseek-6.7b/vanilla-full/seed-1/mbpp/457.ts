function Find_Min(lst: any[][]): any[] {
    let minLength = Number.MAX_SAFE_INTEGER;
    let minArray: any[] = [];
    
    for(let i=0; i<lst.length; i++) {
        if(lst[i].length < minLength) {
            minLength = lst[i].length;
            minArray = lst[i];
        }
    }
    
    return minArray;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the subarray having minimum length.
