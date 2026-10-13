function even_odd_count(num: number): [number, number] { 
    num = Math.abs(num);
    let strNum = num.toString();
    let evenCount = 0;
    let oddCount = 0;
    for (let char of strNum) {
        if (parseInt(char) % 2 === 0) {
            evenCount++;
        } else {
            oddCount++;
        }
    }
    return [evenCount, oddCount];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Given an integer. return an array that has the number of even and odd digits respectively.
//     Example:
//     >>> even_odd_count(-12)
//     [1, 1]
//     >>> even_odd_count(123)
//     [1, 2]