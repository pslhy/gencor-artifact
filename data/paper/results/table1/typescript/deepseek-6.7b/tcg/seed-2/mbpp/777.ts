function find_sum(arr: number[]): number {
    let sum = 0;
    let dict = new Map<number, number>();

    for(let i of arr) {
        if(dict.has(i)) {
            dict.set(i, dict.get(i)! + 1);
        } else {
            dict.set(i, 1);
        }
    }

    for(let [key, value] of dict.entries()) {
        if(value === 1) {
            sum += key;
        }
    }

    return sum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the sum of non-repeated elements in a given array.