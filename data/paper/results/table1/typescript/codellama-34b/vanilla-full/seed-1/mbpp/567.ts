function issort_list(list1: number[]): boolean {
    let isSorted = true;

    for(const [index, value] of list1.entries()) {
        if (value > list1[index + 1]) {
            isSorted = false;
            break;
        }
    }

    return isSorted;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check whether a specified array is sorted or not.
