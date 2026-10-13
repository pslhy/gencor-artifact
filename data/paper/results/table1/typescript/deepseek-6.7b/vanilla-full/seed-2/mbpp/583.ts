function catalan_number(num: number): number {
    let arr = new Array(num + 1).fill(0)
    arr[0] = arr[1] = 1

    for(let i = 2; i <= num; i++) {
        for(let j = 0; j < i; j++) {
            arr[i] += arr[j] * arr[i - j - 1]
        }
    }

    return arr[num]
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function which returns nth catalan number.
