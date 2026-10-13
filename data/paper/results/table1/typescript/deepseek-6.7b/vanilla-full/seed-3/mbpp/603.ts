function get_ludic(n: number): number[] {
    let result: number[] = [];
    let prime = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31];
    let num = 4;
    while (num <= n) {
        if ((Math.pow(2, num - 1) * (Math.pow(2, num) - 1)) <= n) {
            if (prime.includes(num)) {
                result.push(num);
            }
            num += 6;
        }
        else {
            break;
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
