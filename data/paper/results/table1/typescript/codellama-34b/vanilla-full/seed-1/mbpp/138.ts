function is_Sum_Of_Powers_Of_Two(n: number): boolean {
    let sum = 0;
    let powers = [1, 2, 4, 8, 16, 32, 64, 128, 256, 512];

    for (let i = 0; i < powers.length; i++) {
        sum += powers[i];
    }

    return sum === n;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to check whether the given number can be represented as sum of non-zero powers of 2 or not.
