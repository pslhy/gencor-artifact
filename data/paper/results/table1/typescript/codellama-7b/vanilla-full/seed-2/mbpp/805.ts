function max_sum_list(lists: number[][]): number[] {
    let highestSum = 0;
    let highestList: number[] = [];

    for (let list of lists) {
        let sum = 0;
        for (let element of list) {
            sum += element;
        }

        if (sum > highestSum) {
            highestSum = sum;
            highestList = list;
        }
    }

    return highestList;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that returns the array in an array of arrays whose sum of elements is the highest.
