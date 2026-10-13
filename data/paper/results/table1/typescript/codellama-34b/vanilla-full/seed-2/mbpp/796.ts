function return_sum(dict: {[key: string]: number}): number {
    let sum = 0;
    for (const key in dict) {
        if (dict.hasOwnProperty(key)) {
            sum += dict[key];
        }
    }
    return sum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write function to find the sum of all items in the given object.
