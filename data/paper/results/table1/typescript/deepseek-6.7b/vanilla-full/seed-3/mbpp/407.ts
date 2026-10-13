function rearrange_bigger(n: number): any {
    let numArr = n.toString().split('').map(Number).sort((a, b) => a - b);
    let len = numArr.length;

    for (let i = len - 1; i > 0; i--) {
        if (numArr[i] > numArr[i - 1]) {
            let temp = numArr[i];
            numArr[i] = numArr[i - 1];
            numArr[i - 1] = temp;
            return Number(numArr.join(''));
        }
    }
    return -1;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to create the next bigger number by rearranging the digits of a given number.
