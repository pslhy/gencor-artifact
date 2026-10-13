function get_ludic(n: number): number[] {
    let result: number[] = [];

    for (let i = 1; i <= n; i++) {
        if (i % 2 == 0) {
            result.push(i);
        } else {
            let index = 1;
            let found = false;
            while (index < result.length) {
                if (result[index] == i) {
                    found = true;
                    break;
                }
                index++;
            }
            if (!found) {
                result.push(i);
            }
        }
    }

    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to get all lucid numbers smaller than or equal to a given integer.
