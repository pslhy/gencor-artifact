function unique_digits(x: number[]): number[] {
    let result: number[] = [];
    for (let i = 0; i < x.length; i++) {
        let isUnique = true;
        for (let j = 0; j < x.length; j++) {
            if (i != j) {
                isUnique = !containsEvenDigit(x[i]);
                break;
            }
        }
        if (isUnique) {
            result.push(x[i]);
        }
    }
    return result;
}

function containsEvenDigit(num: number): boolean {
    while (num > 0) {
        if (num % 2 === 0) {
            return true;
        }
        num = Math.floor(num / 10);
    }
    return false;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Given an array of positive integers x. return a sorted array of all
//     elements that hasn't any even digit.
//     Note: Returned array should be sorted in increasing order.
//     For example:
//     >>> unique_digits([15, 33, 1422, 1])
//     [1, 15, 33]
//     >>> unique_digits([152, 323, 1422, 10])
//     []
