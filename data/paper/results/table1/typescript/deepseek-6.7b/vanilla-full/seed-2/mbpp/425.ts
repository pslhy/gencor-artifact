function count_element_in_list(list1: any[][], x: any): number {
    let cnt = 0;
    for (let sublist of list1) {
        for (let item of sublist) {
            if (item === x) cnt += 1;
        }
    }
    return cnt;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to count the number of subarrays containing a particular element.
