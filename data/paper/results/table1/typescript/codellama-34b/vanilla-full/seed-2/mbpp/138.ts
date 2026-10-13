function is_Sum_Of_Powers_Of_Two(n: number): boolean {
    let result = false;
    let i = 0;
    while (n > 0) {
        let remainder = n % 2;
        if (remainder === 1) {
            i++;
        } else if (remainder === 0) {
            break;
        }
        n = n / 2;
    }
    if (i === 1) {
        result = true;
    }
    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to check whether the given number can be represented as sum of non-zero powers of 2 or not.
