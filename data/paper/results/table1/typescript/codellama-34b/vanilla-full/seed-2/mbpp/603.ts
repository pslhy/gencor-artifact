function get_ludic(n: number): number[] {
    let result: number[] = []
    for (let i = 1; i <= n; i++) {
        if (ludic_step(i)) {
            result.push(i)
        }
    }
    return result
}

function ludic_step(n: number): boolean {
    if (n === 1) {
        return true
    }
    let min_step = Math.floor(Math.sqrt(n))
    for (let i = 2; i <= min_step; i++) {
        if (n % i === 0 && ludic_step(n / i)) {
            return false
        }
    }
    return true
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to get all lucid numbers smaller than or equal to a given integer.
