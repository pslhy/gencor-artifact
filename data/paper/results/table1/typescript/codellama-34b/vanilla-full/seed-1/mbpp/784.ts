function mul_even_odd(list1: number[]): number {
    let even = 1
    let odd = 1
    let counter = 0
    for (const num of list1) {
        if (num % 2 === 0) {
            even = even * num
        } else {
            odd = odd * num
        }
        counter++
        if (counter === 2) {
            break
        }
    }
    return even * odd
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the product of first even and odd number of a given array.
