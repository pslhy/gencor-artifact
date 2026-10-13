function is_Monotonic(A: number[]): boolean {
    const direction = A[1] - A[0]
    for (let i = 2; i < A.length; i++) {
        if (A[i] - A[i-1] != direction) {
            return false
        }
    }
    return true
}

const A = [1, 2, 3, 4, 5]
console.log(is_Monotonic(A)) // output: true

const B = [1, 2, 3, 4, 3]
console.log(is_Monotonic(B)) // output: false


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to check whether the given array is monotonic or not.
