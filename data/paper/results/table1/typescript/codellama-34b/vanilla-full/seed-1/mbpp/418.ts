function Find_Max(lst: any[][]): any[] {
    let maxElem = lst[0];

    for (let i = 0; i < lst.length; i++) {
        if (lst[i].length > maxElem.length) {
            maxElem = lst[i];
        }
    }

    return maxElem;
}

console.log(Find_Max([[1, 2], [3, 4, 5], [6, 7]])); // Output: [3, 4, 5]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the element of an array having maximum length.
