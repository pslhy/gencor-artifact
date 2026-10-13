function rearrange_bigger(n: number): any {
    const numArr = Array.from(String(n), Number); // split number into array
    const size = numArr.length;
    for (let i = size - 1; i > 0; i--) {
        if (numArr[i] > numArr[i-1]) {
            const tail = numArr.slice(i).sort((a, b) => a - b);
            const idx = tail.findIndex(el => el > numArr[i-1]);
            numArr.splice(i, 1, ...tail.splice(idx, 1));
            const head = numArr.slice(0, i).sort((a, b) => a - b);
            return Number(head.concat(tail).join(''));
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
