function min_product_tuple(list1: [number, number][]): number {
    let sum = 0;
    list1.sort((a, b) => a[0] * a[1] - b[0] * b[1]);
    let i = 0;
    while (i < list1.length - 1) {
        if (list1[i][0] <= list1[i + 1][0] && list1[i][1] <= list1[i + 1][1]) {
            sum += list1[i][0] * list1[i][1];
            i += 2;
        } else {
            sum += list1[i][0] * list1[i + 1][1];
            i += 1;
        }
    }
    if (i < list1.length) {
        sum += list1[i][0] * list1[i][1];
    }
    return sum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the minimum product from the pairs of arrays within a given array.
