function find_sum(arr: number[]): number { 
    let count: {[key: number]: number} = {};
    for(let num of arr) {
        if(count[num]) {
            count[num]++;
        } else {
            count[num] = 1;
        }
    }
    let sum = 0;
    for(let [num, freq] of Object.entries(count)) {
        if(freq === 1) {
            sum += Number(num);
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
