function check_greater(arr: number[], number: number): boolean {
    for(let i = 0; i < arr.length; i++){
        if (arr[i] < number) {
            return false;
        }
    }
    return true;
}

console.log(check_greater([10, 15, 20, 25], 12)); // False
console.log(check_greater([10, 15, 20, 25], 30)); // True


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check whether the entered number is greater than the elements of the given array.
