function closest_num(N: number): number {
    let num = N - 1;
    let strNum = num.toString();
    let strArr = strNum.split('');
    strArr.sort().reverse();
    let sortedNum = parseInt(strArr.join(''));
    if (sortedNum < N && sortedNum > -1) {
        return sortedNum
    } else if (N === 0) {
        return N
    } else {
        return -1
    }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the closest smaller number than n.
