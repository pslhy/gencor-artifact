function consecutive_duplicates(nums: any[]): any[] {
    const result: any[] = [];

    for (const num of nums) {
        if (result.length === 0 || num !== result[result.length - 1]) {
            result.push(num);
        }
    }

    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove consecutive duplicates of a given array.
