function pos_count(list: number[]): number {
    let positive_count = 0;
    for (let i = 0; i< list.length; i++) {
        if (list[i] > 0) {
            positive_count += 1;
        }
    }
    return positive_count;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to count the number of positive numbers in an array.
