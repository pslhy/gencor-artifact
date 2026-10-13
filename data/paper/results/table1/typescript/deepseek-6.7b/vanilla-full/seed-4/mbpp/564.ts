function count_Pairs(arr: number[], n: number): number {
    let map: { [num: number]: number } = {};
    let ans: number = 0;

    // Count the frequency of each element.
    for (let i = 0; i < n; i++) {
        if (map[arr[i]] === undefined) {
            map[arr[i]] = 1;
        } else {
            map[arr[i]] += 1;
        }
    }

    // Calculate the number of pairs.
    for (let key in map) {
        ans += (map[key] * (map[key] - 1)) / 2;
    }

    return ans;
}

let array: number[] = [1, 2, 3, 4, 5];
let size: number = array.length;
console.log(count_Pairs(array, size)); // 10


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function which takes an array of integers and counts the number of possible unordered pairs where both elements are unequal.
