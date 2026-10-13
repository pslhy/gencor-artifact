function intersperse(numbers: number[], delimeter: number): number[] { 
    let result: number[] = [];
    numbers.forEach((num, index) => {
        result.push(num);
        if (index < numbers.length - 1) {
            result.push(delimeter);
        }
    });
    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Insert a number 'delimeter' between every two consecutive elements of input array `numbers'
//     >>> intersperse([], 4)
//     []
//     >>> intersperse([1, 2, 3], 4)
//     [1, 4, 2, 4, 3]
