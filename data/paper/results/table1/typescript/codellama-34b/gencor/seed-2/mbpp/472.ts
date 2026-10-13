
function check_Consecutive(l: number[]): boolean {
    let i = 1;
    while (i < l.length) {
        if (l[i] - l[i - 1] != 1) {
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
//     Write a tsthon function to check whether the given array contains consecutive numbers or not.
