function unique_digits(x: number[]): number[] {
    let result: number[] = [];

    for(let i of x){
        let str = i.toString();
        if(!(str.includes('2') || str.includes('4') || str.includes('6') || str.includes('8') || str.includes('0'))) {
            result.push(i);
        }
    }

    return result.sort((a,b) => a - b);
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
