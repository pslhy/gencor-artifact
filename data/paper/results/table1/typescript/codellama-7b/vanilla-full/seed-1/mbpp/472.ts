function check_Consecutive(l: number[]): boolean {
    let prev: number | null = null;

    for (let i = 0; i < l.length; i++) {
        if (prev != null && prev !== l[i] - 1) return false;
        prev = l[i];
    }

    return true;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to check whether the given array contains consecutive numbers or not.
