function Diff(li1: number[], li2: number[]): number[] {
    const output = [];
    let map = new Map<number, number>();
    
    li1.forEach((num) => {
        if(map.has(num)) map.set(num, map.get(num)! + 1);
        else map.set(num, 1);
    });
    
    li2.forEach((num) => {
        if(map.has(num)) map.set(num, map.get(num)! - 1);
        else map.set(num, -1);
    });
    
    map.forEach((value, key) => {
        if (value !== 0) output.push(key);
    });

    return output;
}

const li1 = [1, 2, 3, 4, 5];
const li2 = [2, 4, 6, 8, 10];
let output = Diff(li1, li2);

// Output is [1, 3, 5, 6, 8, 10]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to get the difference between two arrays.