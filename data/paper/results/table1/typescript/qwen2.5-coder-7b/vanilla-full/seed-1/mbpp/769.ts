function Diff(li1: number[], li2: number[]): number[] { 
    var result: number[] = new Array();
    for (var i = 0; i < li1.length; i++) { 
        if (li2.indexOf(li1[i]) === -1) { 
            result.push(li1[i]); 
        } 
    } 
    return result; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to get the difference between two arrays.
