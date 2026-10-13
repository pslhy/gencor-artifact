function search(lst: number[]): number {
    let maxFreq = 0;
    let result = -1;

    const freqMap: Record<number, number> = {};

    for (let i = 0; i < lst.length; i++) {
        const num = lst[i];
        freqMap[num] = (freqMap[num] || 0) + 1;
    }

    for (const num of Object.keys(freqMap)) {
        if (freqMap[num] >= +num && maxFreq < +num) {
            maxFreq = +num;
            result = +num;
        }
    }

    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     You are given a non-empty array of positive integers. Return the greatest integer that is greater than
//     zero, and has a frequency greater than or equal to the value of the integer itself.
//     The frequency of an integer is the number of times it appears in the array.
//     If no such a value exist, return -1.
//     Examples:
//     >>> search([4, 1, 2, 2, 3, 1])
//     2
//     >>> search([1, 2, 2, 3, 3, 3, 4, 4, 4])
//     3
//     >>> search([5, 5, 4, 4, 4])
//     -1
