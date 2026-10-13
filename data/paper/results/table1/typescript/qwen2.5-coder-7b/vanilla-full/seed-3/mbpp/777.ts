function find_sum(arr: number[]): number {
    let sum = 0;
    const counts = new Map<number, number>();

    arr.forEach(num => {
        if (counts.has(num)) {
            counts.set(num, counts.get(num)! + 1);
        } else {
            counts.set(num, 1);
        }
    });

    counts.forEach((count, num) => {
        if (count === 1) {
            sum += num;
        }
    });

    return sum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the sum of non-repeated elements in a given array.
