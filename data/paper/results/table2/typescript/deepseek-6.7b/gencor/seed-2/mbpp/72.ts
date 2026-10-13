
function dif_Square(n: number): boolean {
    let sum = 0;
    while (sum <= n) {
        let a = 0;
        while (a * a <= n) {
            if ((n - sum) == a * a) {
                return true;
            }
            a += 1;
        }
        sum += (2 * sum) + 1;
    }
    return false;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to check whether the given number can be represented as the difference of two squares or not.
