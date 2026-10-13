function Find_Max_Length(lst: number[][]): number {
    let max_length = 0;
    let length = 0;
    let i = 0;

    while (i < lst.length) {
        length = lst[i].length;
        if (length > max_length) {
            max_length = length;
        }
        i++;
    }

    return max_length;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the length of the longest subarrays.
