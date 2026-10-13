function issort_list(list1: number[]): boolean {
    let i = 1;
    while (i < list1.length) {
        if (list1[i] < list1[i - 1]) {
            return false;
        }
        i++;
    }
    return true;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check whether a specified array is sorted or not.
