function Find_Min_Length(lst: number[][]): number {
    if (lst.length === 0) {
        throw new Error("Invalid array");
    }

    let smallest_length = lst[0].length

    for (const arr of lst) {
        if (arr.length < smallest_length) {
            smallest_length = arr.length;
        }
    }

    return smallest_length;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the length of the smallest array in an array of arrays.
