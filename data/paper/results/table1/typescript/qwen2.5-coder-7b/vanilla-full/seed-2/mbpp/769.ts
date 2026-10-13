function Diff(li1: number[], li2: number[]): number[] { 
    var returnItems = difference(li1, li2); 
    return returnItems; 

    function difference(a: number[], b: number[]): number[] {
        var result = a.filter(item => !b.includes(item));
        return result;
    }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to get the difference between two arrays.
