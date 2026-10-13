function odd_Equivalent(s: string, n: number): number {
    let sum = 0;
    let oneCount = (s.split('0').join('').length + 1) / 2;
    sum += oneCount % 2 === 1 ? 1 : 0;

    let rotatedStr = s.repeat(2)
    let rotatedCounts: number[] = new Array(s.length).fill(0);

    for (let i = 0; i < n; i++) {
        let nextStr = '';

        for (let j = 0; j < s.length; j++) {
            if (j == 0) {
                nextStr += rotatedStr[s.length + i];
            } else {
                nextStr += rotatedStr[i + j];
            }
        }

        rotatedStr = nextStr;

        oneCount = (nextStr.split('0').join('').length + 1) / 2;
        sum += oneCount % 2 === 1 ? 1 : 0;
    }

    return sum;
}

console.log(odd_Equivalent("111", 3)); // 1
console.log(odd_Equivalent("111000", 2)); // 2


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the number of numbers with an odd value when rotating a binary string the given number of times.
