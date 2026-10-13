
function cal_sum(n: number): number {
    let sum = 0;
    let perrin: number = 0;

    // Initialize array with first two Perrin numbers
    let perrin_numbers: number = n < 1 ? 0 : 1;
    if (n > 1) {
        perrin_numbers = 1;
        sum += 1;
    }
    if (n > 2) {
        perrin_numbers = 2;
        sum += 2;
    }

    // Calculate the rest of the Perrin numbers
    for (let i = 3; i <= n; i++) {
        perrin = perrin_numbers;
        perrin_numbers += sum - perrin_numbers;
        sum += perrin_numbers;
    }

    return sum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to calculate the sum of perrin numbers.
