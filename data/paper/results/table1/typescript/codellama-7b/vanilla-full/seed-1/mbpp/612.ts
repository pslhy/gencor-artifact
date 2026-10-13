function merge(lst: any[][]): any[][] {
    return lst.reduce((acc: any[][], cur: any[]) => {
        acc[0].push(cur[0]);
        acc[1].push(cur[1]);
        return acc;
    }, [[], []]);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function which takes an array of arrays, where each subarray has two elements, and returns an array of two arrays where the first array has the first element of each subarray and the second one has the second.
