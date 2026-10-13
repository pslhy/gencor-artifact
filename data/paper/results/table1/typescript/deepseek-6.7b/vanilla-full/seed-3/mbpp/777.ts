function find_sum(arr: number[]): number {
    let nonRepeatNums: {[key: number]: number} = {}
    for (let num of arr) {
        if (nonRepeatNums[num]) {
            nonRepeatNums[num]++
        } else {
            nonRepeatNums[num] = 1
        }
    }
    let sum = 0
    for (let key in nonRepeatNums) {
        if (nonRepeatNums[key] === 1) {
            sum += parseInt(key)
        }
    }
    return sum
}

console.log(find_sum([1, 2, 3, 3, 2, 6, 7]))  //Output: 14


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the sum of non-repeated elements in a given array.
