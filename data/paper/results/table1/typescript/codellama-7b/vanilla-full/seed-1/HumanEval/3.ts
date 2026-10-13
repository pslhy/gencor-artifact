function below_zero(operations: number[]): boolean {
    let balance = 0;

    for (const operation of operations) {
        balance += operation;

        if (balance < 0) {
            return true;
        }
    }

    return false;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     You're given an array of deposit and withdrawal operations on a bank account that starts with
//     zero balance. Your task is to detect if at any point the balance of account fallls below zero, and
//     at that point function should return true. Otherwise it should return false.
//     >>> below_zero([1, 2, 3])
//     false
//     >>> below_zero([1, 2, -4, 5])
//     true
