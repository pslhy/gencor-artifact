function rearrange_bigger(n: number): any { 
    let numAsString = n.toString();
    let numArr = numAsString.split('');

    let i = numArr.length - 2;
    while (i >= 0 && numArr[i] >= numArr[i + 1]) {
        i--;
    }

    if (i < 0) {
        return -1; // No bigger number can be formed
    }

    let j = numArr.length - 1;
    while (numArr[j] <= numArr[i]) {
        j--;
    }

    [numArr[i], numArr[j]] = [numArr[j], numArr[i]];

    let left = numArr.slice(0, i + 1);
    let right = numArr.slice(i + 1).reverse();

    return parseInt(left.concat(right).join(''));
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to create the next bigger number by rearranging the digits of a given number.
