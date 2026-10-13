
function max_occurrences(nums: number[]): number {
    let map = new Map();
    for(let num of nums) {
        if (map.has(num)) {
            map.set(num, map.get(num) + 1);
        } else {
            map.set(num, 1);
        }
    }
    
    let max_value = -1;
    let max_key = -1;
  
    for(let [key, value] of map) {
        if(value > max_value) {
            max_value = value;
            max_key = key;
        }
    }
  
    return max_key;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the item with maximum frequency in a given array.
