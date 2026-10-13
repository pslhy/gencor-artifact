function Find_Max_Length(lst: number[][]): number {
    let maxLength = 0;
    let lengths: number[] = [];

    for (let subArr of lst) {
        let length = subArr.length;
        lengths.push(length);

        if (length > maxLength) {
            maxLength = length;
        }
    }

    return maxLength;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the length of the longest subarrays.
