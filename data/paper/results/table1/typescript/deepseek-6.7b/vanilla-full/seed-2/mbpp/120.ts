function max_product_tuple(list1: [number, number][]): number {
    let sum = 0;
    list1.sort((a, b) => a[0] - a[1] - (b[0] - b[1]));
    for(let i: number = 0; i < list1.length / 2; i++){
       let max = Math.max(list1[i][0], list1[i][1]);
       list1[i+1][1] = max;
    }
    list1.forEach((t: [number, number]) => sum += t[0] * t[1]);
    return sum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum absolute product between numbers in pairs of arrays within a given array.
