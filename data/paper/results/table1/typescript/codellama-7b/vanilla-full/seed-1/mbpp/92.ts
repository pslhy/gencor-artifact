function is_undulating(n: number): boolean {
    let isUndulating = false;

    if(n >= 3) {
        let arr = new Array(n).fill(1);

        for(let i = 1; i < n; i++) {
            if(arr[i] != i + 1) {
                isUndulating = true;
                break;
            }
        }
    }

    return isUndulating;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check whether the given number is undulating or not.
